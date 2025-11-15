// Problem 1 : Write a Dart program to find the sum of all elements in a list.

/* Problem Solving : Think,Write,Code,Review

  input : [2,4,6,8]
  output : 20

  I will Iterate over all elements by their index which will be a variable i using for loop

  */

List<int> numbers1 = [1, 2, 3, 4, 5];

int sum = 0;

for (int i = 0; i < numbers1.length; i++) {
print("Index $i : Number : ${numbers1[i]}");
sum = sum + numbers1[i];
}
print("Sum : $sum");

/* Problem Solving : Think,Write,Code,Review

  We can Solve this problem using recursion.The base case occurs when we've reached
  the end of the list - at that point, we stop and return 0.
  In the recursive step we take the first element and add it to the sum of other
  elements, which is obtained by calling the same function on the smaller portion
  of the list. This way, the problem reduces in each call until it hits the base
  case.

  Base Case : end of list
  recursive case : sum + numbers1[i]
  */

// List + Solving by recursion
// Recursive Function calling
sumOfList(numbers1);

// Problem 2 : Find and print the maximum element from a given list.

/*  Problem Solving : Think, Write, Code, Review

  Main Logic : To Find the Maximum Element

  Input : List = [2,1,3,2,5,8]
  Output : 8

  Iterate through a list (or recurse)
  Keep track of largest seen so far
  compare each element against it
  return or print it at the end

  */

List<int> numbers2 = [2,6,5,8];

if(numbers2.isEmpty){
return;
}
else{
int largest = numbers2[0];

for(int i = 1; i < numbers2.length; i++){
if(numbers2[i] > largest){
largest = numbers2[i];
}
}
print("$largest");
}

/* Solving this by recursive approach

Base case 1 : if List Empty Return null
Base case 2 : if only 1 element then largest is this
Recursive case : recursively looks for largest element from the list and print the largest

Tracing Recursive calls

maxOfList([5,8,2,6])
compares 5 and maxOfList([8,2,6])

maxOfList([8,2,6])
compares 8 and maxOfList([2,6])

maxOfList([2,6])
compares 2 and maxOfList([6])
return 6

Unwinding Recursion calls

maxOfList([6])    this is base case
returns 6

maxOfList([2,6])
compares 2 with the returned result from the previous which was 6
In this comparison 6 is larger
return 6

maxOfList([8,2,6])
compares 8 with previous result which was 6
In this comparison 8 is larger
return 8

maxOfList([5,8,2,6])
compares 5 with previous result which was 8
In this comparison 8 is larger
return 8

*/

int? maxOfList (List<int> numbers2){
if(numbers2.isEmpty) return null;
if(numbers2.length==1) return numbers2[0];

int first = numbers2[0];
int? maxRest = maxOfList(numbers2.sublist(1));
return (maxRest != null && maxRest > first) ? maxRest : first;
}

print("${maxOfList(numbers2)}");
maxOfList(numbers2);

// Problem 3 : Manually reverse a list using logic (loops or recursion).

/*   Problem Solving - Think, Write, Code, Review

  Input : [1,2,3,4,5,6]
  Output : [6,5,4,3,2,1]

  In Lists if we wanna access any element then we require it's index
  As List Contains n number of indexes, so the last index would be n-1
  then n-2
  then n-3
  .
  .
  .
  1
  So here when we reach the 0th index we can stop getting the list and in parallel of it
  for every index from end to start we will append the element from input list to new
  list by using .add(), this will create a reversed List (manually)

  */

List<int> numbers3 = [1,2,3,4,5,6];
print("$numbers3");

// List<int> numbers3Reversed = [];

// for(int i = numbers3.length-1; i >= 0 ; i--){
//   numbers3Reversed.add(numbers3[i]);
// }

// print("$numbers3");
// print("$numbers3Reversed");

/*   Optimization

  Currently -
  time : O(n)
  space : O(n)

  Time stays O(n) because the algorithm touches It touches n/2
  Space could be optimised to O(1) by using
  swap of elements in the same list instead of new List for storing reversed List
  because of this there is no secondary list required, no extra space so space
  complexity would be O(1)

  Use 2 pointers (start, end), and 1 variable (temp)
  start -> begins at 0
  end -> begins at list.length-1
  Move inward
  start++
  end--

  we will swap on iteration while start < end
  first we will assign start value to temp, to avoid overwriting it
  then, end value to start
  then, temp value to end

  */

int start = 0;
int end = numbers3.length - 1;
int temp;

while(start<end){
temp = numbers3[start];
numbers3[start] = numbers3[end];
numbers3[end] = temp;
start++;
end--;
}

print(numbers3);

/* Using Recursion --- Problem Solving - Think,Write, Code, Review

  Base Case : Stop When we reaches the starting of List Which was index 0 Always
              return result of reversed list
  Recursive Case : Accessing Input List from end to start by index and Appending in
                   New List.
                  return same Function by -1 index of Input List

  */
