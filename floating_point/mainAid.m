function [ans1_1,ans1_2,ans2_1,ans2_2,ans3_1,ans3_2] = mainAid()
    x_1 = 1/3;
    x_2 = 1/64;
    x_3 = 512;
    b_1 = 2;
    b_2 = 3;
    
    
    [s_1_1, m_1_1, e_1_1,L_1_1] = floatingPoint(x_1,b_1);
    [s_1_2, m_1_2, e_1_2,L_1_2] = floatingPoint(x_1,b_2);
    [s_2_1, m_2_1, e_2_1,L_2_1] = floatingPoint(x_2,b_1);
    [s_2_2, m_2_2, e_2_2,L_2_2] = floatingPoint(x_2,b_2);
    [s_3_1, m_3_1, e_3_1,L_3_1] = floatingPoint(x_3,b_1);
    [s_3_2, m_3_2, e_3_2,L_3_2] = floatingPoint(x_3,b_2);
    
    
    x_1_1_rec = fromFloatingPoint(s_1_1, m_1_1, e_1_1, b_1,L_1_1);
    x_1_2_rec = fromFloatingPoint(s_1_2, m_1_2, e_1_2, b_2,L_1_2);
    x_2_1_rec = fromFloatingPoint(s_2_1, m_2_1, e_2_1, b_1,L_2_1);
    x_2_2_rec = fromFloatingPoint(s_2_2, m_2_2, e_2_2, b_2,L_2_2);
    x_3_1_rec = fromFloatingPoint(s_3_1, m_3_1, e_3_1, b_1,L_3_1);
    x_3_2_rec = fromFloatingPoint(s_3_2, m_3_2, e_3_2, b_2,L_3_2);
    
    
    disp(['1/3 rec with base = 2 : ' num2str(x_1_1_rec) ''])
    disp(['absolute error: ' num2str(abs(x_1-x_1_1_rec)) ''])
    disp(['relative error: ' num2str(abs((x_1-x_1_1_rec)/x_1)) ''])
    disp('----------------')
    disp(['1/3 rec with base = 3 : ' num2str(x_1_2_rec) ''])
    disp(['absolute error: ' num2str(abs(x_1-x_1_2_rec)) ''])
    disp(['relative error: ' num2str(abs((x_1-x_1_2_rec)/x_1)) ''])
    disp('----------------')
    disp(['1/64 rec with base = 2 : ' num2str(x_2_1_rec) ''])
    disp(['absolute error: ' num2str(abs(x_2-x_2_1_rec)) ''])
    disp(['relative error: ' num2str(abs((x_2-x_2_1_rec)/x_2)) ''])
    disp('----------------')
    disp(['1/64 rec with base = 3 : ' num2str(x_2_2_rec) ''])
    disp(['absolute error: ' num2str(abs(x_2-x_2_2_rec)) ''])
    disp(['relative error: ' num2str(abs((x_2-x_2_2_rec)/x_2)) ''])
    disp('----------------')
    disp(['512 rec with base = 2 : ' num2str(x_3_1_rec) ''])
    disp(['absolute error: ' num2str(abs(x_3-x_3_1_rec)) ''])
    disp(['relative error: ' num2str(abs((x_3-x_3_1_rec)/x_3)) ''])
    disp('----------------')
    disp(['512 rec with base = 3 : ' num2str(x_3_2_rec) ''])
    disp(['absolute error: ' num2str(abs(x_3-x_3_2_rec)) ''])
    disp(['relative error: ' num2str(abs((x_3-x_3_2_rec)/x_3)) ''])
end
