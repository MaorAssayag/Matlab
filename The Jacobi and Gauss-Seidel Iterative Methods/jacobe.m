function [result] = jacobe(A, v, N, thresehold, real_q)

%jacobel(A, v, thresehold) solve iteratively a system of linear equations 
% A * q = v, N is the max number of iteration

n = size(A,1);
m = size(A,2);

%splitting matrix A into the three matrices L, U and D
D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);
Q = D;
c = inv(Q) * v;
G = diag(diag(ones(n,m))) - (inv(Q)*A);

k = 1;
q = zeros(n,m);	%intialize q to zeros
tmep = zeros(n,m); %intialize temp vector to zeros
relative_distance = [];
relative_error = [];

while k <= N
    q(k+1,:) = G * q(k,:).' + c;
    
    if  norm(q(k,:).') ~=0 
        relative_distance = [relative_distance, norm(q(k+1,:).'-q(k,:).') / norm(q(k,:).')];
    else
        relative_distance = [relative_distance, 0];
    end;
    relative_error = [relative_error, norm(real_q-q(k,:).') / norm(real_q)];

    if (norm(q(k+1,:).'-q(k,:).') / norm(q(k,:).')) < thresehold
      disp('The procedure was successful')
      disp('Condition ||q^(k+1) - q^(k)|| < thresehold was met after k iterations')
      disp(k); disp('q = ');
      disp(q(k+1,:).');
      figure
      semilogy((1:k),relative_error,'r--','linewidth',2)
      hold on;
      semilogy((1:k),relative_distance,'b','linewidth',2)
      title('Q2_c'); xlabel('k','FontSize',12); ylabel('log','FontSize',12);    
      legend([{'Relativ error'};{'Relative distance'}]);
      break
   end
   k = k+1;
end
k=k-1;
if norm(q(k+1,:).'- q(k,:).') / norm(q(k,:).') > thresehold || k > N
   disp('Maximum number of iterations reached without satisfying condition:')
   disp('||q^(k+1) - q^(k)|| < thresehold'); disp(thresehold);
   disp(q(k+1,:).');
end

result = q(k+1,:).'; % return q_(k), which is (k+1) if k start from 1
end