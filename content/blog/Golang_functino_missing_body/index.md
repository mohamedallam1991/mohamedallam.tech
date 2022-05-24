---
title: "Golang missing function body or unexpected semicolon"
slug: golang-missing-function-body
date: 2022-05-24
description: In this tutorial we learn how to fix two common Go syntax problems, and how to format the text properly.
keywords: Golang function missing body or unexpected semicolon or newline before { curly braces
tags:
  - Go
ShowToc: true
cover:
  image: golang missing function body or unexpected semicolon.jpg
  caption: golang missing function body or unexpected semicolon
---


# Golang missing function body or unexpected semicolon {

## Golang functions

One of the most beautiful things about Golang is formatting the code, internationally if you ever open any Golang code, you are looking to the same format, how cool is that?
Other programming languages has source code formatting

## Missing function body example

If we write a function with an open curly braces in a new line, we would have one of the this two errors.

```go

func main()
{
	println("Hello")
}
/// main.go:5:6: missing function body for "main"
// ./prog.go:6:2: syntax error: unexpected semicolon or newline before {
```

## Fix missing function body

```go
func main() {
	println("Hello")
}
// Hello
```

For more informations, here is a [Go.dev](https://go.dev/doc/faq#semicolons) link in the FAQ section, I quote:

### Why are there braces but no semicolons? And why can't I put the opening brace on the next line?

Go uses brace brackets for statement grouping, a syntax familiar to programmers who have worked with any language in the C family. Semicolons, however, are for parsers, not for people, and we wanted to eliminate them as much as possible. To achieve this goal, Go borrows a trick from BCPL: the semicolons that separate statements are in the formal grammar but are injected automatically, without lookahead, by the lexer at the end of any line that could be the end of a statement. This works very well in practice but has the effect that it forces a brace style. For instance, the opening brace of a function cannot appear on a line by itself.

Some have argued that the lexer should do lookahead to permit the brace to live on the next line. We disagree. Since Go code is meant to be formatted automatically by `[gofmt](https://go.dev/cmd/gofmt/)`, *some* style must be chosen. That style may differ from what you've used in C or Java, but Go is a different language and `gofmt`'s style is as good as any other. More important—much more important—the advantages of a single, programmatically mandated format for all Go programs greatly outweigh any perceived disadvantages of the particular style. Note too that Go's style means that an interactive implementation of Go can use the standard syntax one line at a time without special rules.
