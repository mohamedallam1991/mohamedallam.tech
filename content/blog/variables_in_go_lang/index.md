---
title: "Golang variables everything you need to know"
slug: golang-variables
date: 2022-05-24
description: In this long and detailed blog post we learn everything about variables in the Go programing language
keywords: Golang, Go programming language variables, data type, declaration, scope, type inference, case sensitive
tags:
  - Go
ShowToc: true
cover:
  image: variables in golang.jpg
  caption: golang variables
---

# Variables

<aside>
💡 Variable declaration
Redeclaration and shadowing
Visibility
Naming conventions
Type conversion

</aside>

## What is a variable in general?

A variable in programming is a data, that changes depending on certaing things, so certainly a variable will be stored in memory during certain cycle.

For example if we register a user, his name is a variable, we call name, and the value assigned to it, is his name.

Each user will have different name obviously, so that varies.

## Why data type exists?

So all users have names. and the name has a type of characters. so a name is sequence of letters, John, Jane or Johny ..ect however he unlikely has a name of 007 right.

An age however, is generally a sequence of digits  4, 18, 67 years old.

This lead us to understand, age is integer, and name is a string. there is some other types.

### Bonus

Our software will hold plenty of variables of so many types, however we often use them in certain level, or scope. you dont want the variables hanging, accessible and editable everywhere. thats why in programming often, the variables has a scope declaration, which dictates the boundaries of this particular variable. (private, public, global..ect)

<aside>
💡 Off Go topic but in programming in general
- We need a combination of freedom to do things, but certain rules help us stay consice. in a way we have helpful restrictions.
- Imagine we have cars, but we don’t have a law of traffic, then you can drive in any direction at any speed in any manner, how horrible driving a car experience will be?
I am sure you would still manage to move from A to be B eventually but how if we have certain rules to keep you safe.
- Each programming language or framework will try to keep you safe in its way, and there is further arbitrary things you or your tech leder will decide upon.

</aside>

<aside>
💡 We can show hello world and go from there trying to print out something different

</aside>

## How to declare a variable in Go

To declare a variable in Golang, there is 3 ways of declarations, one thing to consider is that always a variable will have a predefined type, otherwise our compiler will yell at us.

The declaration will be a combination of:

- The keyword var, which stands for variable obviously.
- An arbitrary name (ex: i, age, phoneNumber).
- Variable type which can be String, Integer, Float..ect or we can let the compiler detect the type at compile time.
- Optionally we can initiliase the variable instantly, or sometimes we declare a variable, differently from initialising it. (bear in mind, every variable has to be used).

Here is an example of a variable declaration.

```go
var name string = "John"
var age int
age = 30
country := "DZ"
```

<aside>
💡 Var keyword refers to variables in Golang

</aside>

## Golang print a variable

Golang has variety of ways and functions to print a variable, but for our learning purposes we will see two ways, using the FMT package, or the built in function

We can use `println` function from the built in functions, to print variables in a single line, or we can use the package FMT, which provides many other tools including printing the value within a string, or getting the type to see what we are working with.

```go
package main

import "fmt"

func main() {
	var name string = "John"
	var age int
	age = 30
	country := "DZ"
	fmt.Println(country)
	println(age)
	print(name)
}
//DZ
//30
//John
//Program exited.
```

## Go reads up to bottom

In Go code, the program reads up to down, means if we set a variable to a value, than set it again, the bottom variable will override the other one.

```go
var age int = 40
age = 30
fmt.Println(age) // 30
```

## The three forms of declaration and assignment of value to them

```go
var name string = "John" // we declare variable, data type, and initialise it with a value.
var name := "John" // we declare variable and its value, we let the compiler detect the type.
var name string // we only declare variable ***name*** and its type. which is ***string***.
name = "Jane" // we assign the value Jane to the variable.
```

Initially we don’t want to be more verbose than we have to, therefor we would generally use the shortest version, however at times we would need to use the inline one as we want to precise the variable type.

Lastly the two lines declaration and assignment is used when we dont want to assign the value upfront, and we would assign that later in our code.

This three declarations are identical.

```go
var age int
age = 30
var age int = 30
age := 30
```

### Type inference and short variable declaration

Often in Go lang we use the short form variable declaration

```go
age := 30
```

Go uses type inference to determine what type of data it’s working with. data types only need to be provided in certain circumstances, compiler is always making sure what we type is correct, otherwise we get a compiler error, which provides type safety to us.

Its possible that data is invalid for the given type only if

- We deal with user inputs
- Manually manipulate the binary data (pointers)

## Data type declaration

Sometimes we need control over declaring a variable data type and other times we just want to delegate to the complier do that for us.

```go
var name string = "john"
var name := "john"
```

This two lines of code are identical. its where we declare a variable called name, with string type, and value john.

However in first one, we explicitly declare the variable type.

The second one, we delegate to the complier our friend to do the job for us. This is more used when you are experienced.

<aside>
💡 Quotes is how to write a string in Golang. so Go knows its not a keyword we want to use or a function..ect
For example 42, and “42” dosent mean the same thing, the first one is for integers, and the second one is for strings.

</aside>

There is more details about variables data types in [here](https://golangbyexample.com/all-data-types-in-golang-with-examples/). ([https://golangbyexample.com/all-data-types-in-golang-with-examples/](https://golangbyexample.com/all-data-types-in-golang-with-examples/))

### Type of variables

In general a variable can be:

- boolean
- integer
- float
- complex
- String
- Rune
- Array
- Map
- …ect

## When to use each syntax?

- The first format, is what we do when we want to declare a variable but we are not ready to initialize it yet.
- We use the second format, when we think Go will mistake in the type, so we want to give precise data type, example if we write:

```go
price := 9
fmt.Printf("%v, $T", $j, $j) // 9, int
// correct one
price float32 = 9
fmt.Printf("%v, $T", $j, $j) // 9, float32
```

obviously Go will see this as an integer, while we might want it to be a floating number. therefor we would have to declare the type upfront in this case.

- For other cases where Go will be correct in figuring out the variable data type.

```go
//1 Generally when we want to declarer a variable but we are not ready just yet to initilise it yet. like maybe we declare the variable in a function, but we assign the value within a loop inside the function.
var name string
name = "john

//2 this is probably most common one, as we let the complier help us, define the data type, and initialise the variable with a value.
k := 9

//3 We use this expressive syntax when we have granular control over our variables.
var i int = 42
```

## Variable declaration outside a function level

If we want to declare a variable outside a function we cant use the shorthanded declaration, we would need to define the data type upfront.

```go
var age integer = 42
```

### Variable block

Lets say we have a bunch of variable declarations in a package level.

```go
package main

var name string = "Mohamed"
var age integer = 30
var hourlyRate float32 = 49.99
```

This is making things little bit cluttered, we can use another syntax for this

```go
var (
	name string = "Mohamed"
	age integer = 30
	hourlyRate float32 = 49.99
)
```

### **declare multiple variables**

Many times, we find ourselves needing to declare or even initialise multiple variables, there is a shorthand for that as well

```go
var firstName, lastName, email string
var i, j = 10, 20 // 10 int, 20 int
var i, j = "q", 20 //10 int, "q" string
```

## Shadowing

given we declare a same variable in the package level, than we redeclare it, at a function level.

```go
package main

import "fmt"

var i int = 50

func main (){
	var i int = 20
	i := 30
	fmt.Println(i)
}
```

This will cause us an error, we cant redeclare a variable in the same scope, or level, so here the main function cant have two declaration, but we can of course can assign a value to it `i = 30`

The variable with the most intermost scope actually takes precedence. this is called shadowing.

## The default value of a variable

Go focuses on integrity. One way is the concept of zero value, any variable will have a value in memory, so as soon as we declare a variable it will have a zero value.

- Integers and floats to 0
- Boolean to false
- String to empty space not nil or null “”

<aside>
💡 The fmt pacakge is official package, that allow us to print things to screen in different ways and forms

</aside>

```go
fmt.Println() // prints in a new line
fmt.Printf() //print whateverr we give it
%v, theValue // We can use the $v as a placeholder, then set the value variable
%T, theType // we can do the same with %T, except its to print the type of a variable
```

### Case sensitive variables

In Go, variables are case sensitive it means, if we have two variables with different upper and lower cases, it would mean they are two different variables

```go
package main

import "fmt"

func main() {
	var i int = 20
	var I int = 10
	fmt.Println(i, I)
}
```

## Naming convention and visibility of Golang variables

There is two rules of thumb:

- Naming convention controls the visibility, the first letter of variable defines wether its global or local, lower case first letter (aka camel case) are scoped to the package they are declared in, Upper case first letter (aka Pascale case) exposes the variable to the outside scope they become global. The three levels of visibility in Golang
    - Package level scope if its lower case, so any file under the same package can access the variable,
    - If its upper case in the package, it becomes globally visible
    - Block scope so if its in a loop or a function..ect
- The name of the variable is affected by the lifespan of the variable, if its going to be used for long then be as descriptive as possible, but dont go over 50 letters or so, However if you just need it where you will use it, then feel free to minimize the length.
- When you use acronyms, like HTTP, or URL URI..ect keep those all upper case.

### What about not using a variable in its declaration block?

Golang complier, obliges us to use the variables, otherwise we would be yelled at.
So bear in mind that whenever you declare a variable you have to use it in its scope, or the interscopes, otherwise the complier will complain.

This is pretty valuable to keep our code concise and get rid of junk or unused code

## How to convert a type of a variable

Given we initialize a variable, but later we decide to change its type, by passing in another variable with a different type.

```go
var i int = 21
var j float32
j = i  // this should mean j = 21
```

This can be done, however at times we want to do the opposite, so then we need to explicitly do that, otherwise the complier would yell at us, as he dont want use to loose information.

```go
var a float32 = 43.5
var b int
b = a // this gives error, because the integer will only take 43
b = int(a) //work around but keep in mind you have to be responsible to loose information
```

If you want to convert between an integer and a string, you will have to use the package “strconv” because in Golang strings are alias for bytes

From integer to float which is fine

```go
func main (){
	var i int = 911
	fmt.Printf("%v, %T", i, i ) //911, int

	var j float32
	j = float32(i)
	fmt.Printf("%v, %T", j, j ) //911, float32
}
```

We can also do

```go
func main (){
	var i float32 = 911
	fmt.Printf("%v, %T", i, i ) //911, float32

	var j int
	j = int(i)
	fmt.Printf("%v, %T", j, j ) //911, int
}
```

If we try `j = i`, isntead this wont work, because go wont risk of loosing information, because the float might have a decimal on it.

```go
j = float32(i)
// it can be
j = i
```

If we try to convert an integer to a string, it wont work  unless we use a package strconv.

```go
func main (){
	var i int = 911
	fmt.Printf("%v, %T", i, i ) //911, int

	var j string
	j = strconv.Itoa(i)
	fmt.Printf("%v, %T", j, j ) //911, string
}
```

If we just use the regular one, Go would think its a slice and will give is some charachter matching the slice value of the given index (40 in this case)

```go
var i int = 40
fmt.Printf("%v, %T", i, i ) //40, int

var j string
j = string(i)
fmt.Printf("%v, %T", j, j ) //(, string
```

### All variables are zero valued

This means whenever we declare a varaible it has a value, its not null/nil therefor if its a numeric type its 0, if its a string its “”. false for booleans, nil for interfaces, so all variables have a value.

For example s string is an empty string, which wont create errors or unpredictable behaviour.

```go
var s string
fmt.PrintLn(s) // ""
```

### Common syntax

Sometimes we encouter a situation where something should return two variables, not just one.

```go
var f, err = os.Open(fileName)
```

This would return f, and error. however if in some cases we just want to ignore the error, we can use the underscore, which will ignore whats returned and avoids memory allocation.

```go
var f, _ = os.Open(fileName)
```

### Have to be used

If you declare a variable and dont use it, the compiler will yell at us, we always need to use any variable we declare.

We can declare a variable and not use it in its scope, we would definitely see the compiler yelling at us:

```go
func main (){
	var i string
}
// go run main.go
 i declared but not used
```

### Acronyms

Best practice in Go lang we use upper case for better readability.

```go
HTTPRequest, URL
```
