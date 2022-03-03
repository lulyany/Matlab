# ex1

1.pseudocode:

1)the position of the ball (x,y)

2)generate a function like y=x

3)x=x+1

4)y=x

5)plot the image

6)time=time + 1

7)back to 3)

2. please run ex1_2

   ```matlab
   function inputting()
       size=input('the length of one size of the square:');
       %the size of the square
       maxtimes=input('how many times the ball should bounce before stopping:');
       %how many times the ball should bounce before stopping
   end
   ```

   

3. please check ex1_3, don't run, for it may not include the input in ex1_2 if i don't finish it completely

   In the plotted figure, the ball is initially generated at (0.0)

   ```matlab
   function plotting(size)
   
     axis((-size/2),(size/2),(-size/2),(size/2));
   
     ball.x=0;
   
     ball.y=0;
   
   plot(ball.x,ball.y,'bo','MarkerSize',10,'MarkerFaceColor','b');
   
   end
   ```

4. please see ex1_4

   ```matlab
   function testing=testing(size)
       if ball.x = (-size/2) || ball.x=(size/2) || ball.y=(-size/2) || ball.y=(size/2)
          testing=1;
       else
           testing=0;
       end
   end
   ```

   

   # ex2

   ## we know that all plates at each table are sorted from the amallest at the bottom to the biggest at the top

   1.

   1)struct plate 

   2)sort struct.size  

   and name them plate.name

   ​	plate1>plate2>plate3

   3)then find where plate3 is

   4)move all the plates above plate3 to the other table

   5)put plate3 into the box

   6)then do it the same for plate2

   2.

   a) **As long as we sort the plates,to get the biggest plate,we need to get the smaller one , and go,go,go, we come to get the smallest plate**	

   b)when to put plate n to the box, we need to put plate n-1

   ​	······

   find where plate n-1 is, and put all the plates above it to the other table

   and make sure  when moving between the tables, rearrange the plate

   

   6.fopen('output.txt','w+')

   ```
   fd=fopen('output.txt','w+');
   fprintf('Moving plate %d from %s to %s',x, m,n);
   ```

   # ex3

   1. ```matlab
      RGB = imread('ngc6543a.jpg');
      image(RGB);
      ```

   2. ```matlab
      load clown % An image that is included with MATLAB
      imwrite(X,map,'clown.bmp')
      ```

   3. swp

   4. ```matlab
      % Read RGB image from graphics file. 
      im = imread('street2.jpg'); 
      
      % Display image with true aspect ratio
      image(im); axis image
      
      % Use ginput to select corner points of a rectangular
      % region by pointing and clicking the mouse twice
      p = ginput(2); 
      
      % Get the x and y corner coordinates as integers
      sp(1) = min(floor(p(1)), floor(p(2))); %xmin
      sp(2) = min(floor(p(3)), floor(p(4))); %ymin
      sp(3) = max(ceil(p(1)), ceil(p(2)));   %xmax
      sp(4) = max(ceil(p(3)), ceil(p(4)));   %ymax
      
      % Index into the original image to create the new image
      MM = im(sp(2):sp(4), sp(1): sp(3),:);
      
      % Display the subsetted image with appropriate axis ratio
      figure; image(MM); axis image
      
      % Write image to graphics file. 
      imwrite(MM,'street2_cropped.tif') 
      ```

   

   

   

   

   

     