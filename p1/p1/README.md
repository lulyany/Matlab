# Project 1

*LuYan 520370910039*

## Usage

Use the following command to run the code and input values as prompted.

```matlab
main
```

## Included files

### *main.m* 

The main program.

### *run.m*

Let the cars run.

### *carset.m*

Set the parameters for cars.

### *roaddrawer.m*

Draw th road.

### *changeroad.m & changeroad2.m*

Used to change the lane of the car.

Because of the different cases, so I use two files.

### crash.m

To generate the parameter: *crash*.

### displaycar.m

To draw the cars, including the color and the position.

### finish.m

Used to change the lane of the car.

Because of the different cases, so I use two files.

### lightcontrol.m

Used to change the color of the traffic light.

### Ex1 algorithm

There are four lanes in the figure. Take one of them for example.

g, o, r stand for the time units of three-color traffic lights,that is green, orange, and red. 

1.timecycle=g+o+r+o

2.if rem(time - 1, timecycle) + 1 <= g  

​    status = 1;

​	elseif rem(time - 1, timecycle) + 1 <= g + o

​      status = 2;

​    elseif rem(time - 1, timecycle) + 1 <= g + o + r

​      status = 3;

​    else

​      status = 2;

3.lightcontrol:	

if status==3

Two green lights. Two red lights.

if status==2

All yellow lights.

if status==1

Two red lights. Two green lights.

4.x :the x position of all the cars on this lane.

​	x=x-1;

5.time=time+1

6.back to step 2

### EX2 1a

```matlab
1.set = input('Input a set of elements (digits or letters): ','s');
2.d=strsplit(set);
3.m=size(d, 2);
4.if k == m
        i=1;
        j=1;
        while i <= m
            fprintf('%c',d{i});
            i=i+1;
        end
        fprintf('\n');
    else
        while j <=m
            temp        = d{j};
            d{j} = d{k};
            d{k} = temp;
            perm(k + 1, m, d);
            temp        = d{j};
            d{j} = d{k};
            d{k} = temp;
            j=j+1;
        end
	end
```



### EX2 1b

```matlab
1.set=input('Input a set of elements (digits or letters): ','s');
2.n=input('Input the size of the random subset of permutations: ');
3.all=length(set);
4.result=[];
5.temp=[;
6.for i=1:all
    for j=1:n
        temp=[temp,sprintf(set(j))];
    end
    result=[result,temp,' ']
	end
7.disp(result);

```





