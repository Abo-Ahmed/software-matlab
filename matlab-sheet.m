
Mat Lab commands
	clc - clears command window
	no data types definitions 
	z(5) if string it returns the character 5 in string z 
	string is in single quotation
	clear - clears the variables values
	clear varName - clears the specified value
	whos - returns data about all your variables
	mat lab thinks about matrices
	z' gives the transpose of the element
	any field in mat lab takes 8 bytes
	semi-colon after any command hides the result form screen

	file of code
	write commands in notepad , then copy-past to mat lab
	new mat lab file >> script
	file to be done that doesn’t take or return parameters
	file that take parameters or return it is function
	the file should be .m meta type
	then we can edit the file to add commands
	to execute it just write its name in command

	tap to see the anther instr approximation
	function if we used it only we will get the first arguemnt only
	[ f , u ]  = add ( 5, 9 )
 
	to define matrix 
	x  =[ 1  5 2 ]
	x = 1:9
	from 1 to 9 
	x = [1:9:2]
	step 2
	x = [1:9 , 1:3 ]
	two periods in our matrix
	x = [ 2 2 3 ; 1 2 3 ]
	semi-colon to separate between rows
	space of comma
	x .* y is cross product
	x ./ y is cross division
	x (: , 1)  targeting the first row in the matrix
	plot (  x , y , ‘.’)   this dot so keep relation in points only
	title ‘your name’
	xlabel ‘ x coordinating names’

	pi is the 3.14 value
	-6 : 5. : 6
	from 6 to 6 with step .5
	for i = 1:9
	loop from i = 1 to i = 9
	won’t be executed until we write end

	in images 
	the first plane is x (:,:,1 )


	rand() return random number
	randn() return positive or negative number
	rand(n) return n X n random
	ones(n , m ) return matrix n X m of ones
	zeros(n , m ) return matrix n X m of zeroes



	to monitor changes in k-mean
	opts = statset(‘Display’ , ‘final’) // define structure opts
	 [idx,ctrs] = kmeans(X,2,   'Distance','city',  'Replicates',5, 'Options',opts)
	Ctrs will hold coordinates of two centroids  number of classes
	Idx will hold each point indicator to its group


To display the red and blue points related to each class:

plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
plot(ctrs(:,1),ctrs(:,2),'kx',...
     'MarkerSize',12,'LineWidth',2)
plot(ctrs(:,1),ctrs(:,2),'ko',...
     'MarkerSize',12,'LineWidth',2)
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NW')




