You are probably only interested in the [`./t`](./t) file. It is a tool to assist you complete the [99 OCAML practice problems](https://ocaml.org/learn/tutorials/99problems.html).  

[`./t`](./t) is an OCAML semi-auto-tester. It starts a toplevel `ocaml`, `#use` your main script, and pumps whatever is in `./test.ml` to the toplevel.  

[`./t`](./t) also compiles `./main.ml` into `./main`... Just a shorthand for me.  

So,  
- You write your code in `./main.ml`,  
- You write your tests in `./test.ml`,  
- Run `../t`,  
- Inspection the output.  
