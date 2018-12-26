clear; clc;
a = imread('alpaca.jpg');
a = rgb2gray(a);
b = double(a);
H = [0 1 0;1 8 1;0 1 0];

% dilation
for i = 2:size(a,1)-1
    for j = 2:size(a,2)-1
        store11 = b(i-1:i+1,j-1:j+1);
        store12 = store11 + H;
        cal11 = max(store12);
        A1(i,j) = max(cal11);
    end
end
B1 = uint8(A1);
subplot(1,3,1); imshow(a); title('original')
subplot(1,3,2); imshow(B1); title('dilation')

%erosion
for i = 2:size(a,1)-1
    for j = 2:size(a,2)-1
        store21 = b(i-1:i+1,j-1:j+1);
        store22 = store21 - H;
        cal21 = min(store22);
        A2(i,j) = min(cal21);
    end
end
B2 = uint8(A2);
subplot(1,3,3); imshow(B2); title('erosion')
    
    
    
    
    
    
    
    
    
    
    
    
    
    