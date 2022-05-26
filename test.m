x = im2double(imread('141012.jpg'));
% x=im2double(imread('78098.jpg'));

%  filter
%H = im2double(rgb2gray(imread('testkernel2.bmp'))); H = H./sum(H(:));
% H = fspecial('gaussian', [5 5],2);
H = fspecial('motion',21,11);
% H = fspecial('disk',5);
% f=@(x) imfilter(x,H,'circular'); 
f = @(x) imnoise(imfilter(x,H,'circular'),'gaussian',0,0.0001); 

options.tau = 0.1;
options.mu = 5e-5;
options.maxiter = 2000;

y = f(x);

L = Landweber(f, y, options);
%L2 = Landweber2(f, y, options);

figure, imshow([x, y, L]);
%figure, imshow([x, y, L2]);

%options.maxiter = 500;
%NAL = Nesterov_accelerated_Landweber(f, y, options); 
%options.maxiter = 1000;
%PCL = PC_Landweber(f, y, options); 
%figure, imshow([x, y, NAL]);
%figure, imshow([x, y, PCL]);
