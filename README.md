# konversi_RGB
UTS Pengolahan Citra

Desain awal :

![image](https://user-images.githubusercontent.com/83641930/116988086-16d82e80-acfa-11eb-93ad-da35ac05845b.png)

Hasil :

![image](https://user-images.githubusercontent.com/83641930/116988128-2788a480-acfa-11eb-9ffe-e90b21880a58.png)


Codingan :

[filename, pathname] = uigetfile({'*.jpg','*.png'});
gambar = imread([pathname, filename]);
 
axes(handles.axes1);
imshow(gambar);
 
R = gambar(:,:,1);
G = gambar(:,:,2);
B = gambar(:,:,3);
 
Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);
 
axes(handles.axes2);
imshow(Red);
 
axes(handles.axes3);
imshow(Green);
 
axes(handles.axes4);
imshow(Blue);

