function [result] = gauss_seidel(A, v, N, thresehold, real_q)
%Gauss_seidel(A, v, thresehold) solve iteratively a system of linear equations 
% find q : A * q = v
% N is the max number of iteration
% thresehold is the choice of tollerance smaller than 1
% real_q - for comaring to the current answear & see the relative error 

n = size(A,1);
m = size(A,2);

%splitting matrix A into the three matrices L, U and D
D = diag(diag(A));
L = triu(A)-D;
U = A - L - D;
Q = L+D;

k = 1;
q = zeros(n,m);	%intialize q to zeros
tmep = zeros(n,m); %temporary vector to be used in next step)
relative_distance = [];
relative_error = [];

while k <= N
    tmep(k,:) = -1 * U * q(k,:).' + v;
    % solve Qq_(k) = temp_(k-1) to get q_(k)
    q(k+1,:) = inv(Q) * tmep(k,:).';
    
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
      semilogy((1:k),relative_error,'b','LineWidth',1.5);
      hold on;
      semilogy((1:k),relative_distance,'r','LineWidth',1.5);
      title('Q2_a'); xlabel('k','FontSize',12); ylabel('log','FontSize',12);    
      legend([{'Relativ error'};{'Relative distance'}]);
      break
   end
   k = k+1;
end

if norm(q(k+1,:)- q(k,:)) / norm(q(k,:)) > thresehold || k > N
   disp('Maximum number of iterations reached without satisfying condition:')
   disp('||q^(k+1) - q^(k)|| < thresehold'); disp(thresehold);
   disp(q(k+1,:).');
end

result = q(k+1,:).'; % return q_(k), which is (k+1) if k start from 1
end