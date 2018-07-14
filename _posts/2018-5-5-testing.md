---
categories:
  - 3D Printing
---
For my first test post I'll just write ```Hello World!``` in a bunch of different ways.

http://peterforgacs.github.io/2017/06/25/Custom-C-Exceptions-For-Beginners/

# C++
{% highlight cpp %}
#include <iostream>
int main()
{
  // This is a comment
  std::cout << "Hello World!" << std::endl;
  return 0;
}
{% endhighlight %}

# Adv. C++
```cpp
class MyException : public std::exception {
	const char* file;
    int line;
    const char* func;
    const char* info;

    public:
    	MyException(const char* msg, const char* file_, int line_, const char* func_, const char* info_ = "") : std::exception(msg),
        	file (file_),
        	line (line_),
        	func (func_),
        	info (info_)
        {
        }

        const char* get_file() const { return file; }
        int get_line() const { return line; }
        const char* get_func() const { return func; }
        const char* get_info() const { return info; }

}

int main()
{
	try
    {
    	some_function()
    }
    catch (MyException& ex)
    {
    	std::cout << ex.what() << ex.get_info() << std::endl;
        std::cout << "Function: " << ex.get_func() << std::endl;
        return EXIT_FAILURE;
    }

}
```

# C
{% highlight c %}
#include <stdio.h>
int main()
{
  printf("Hello World!");
  return 0;
}
{% endhighlight %}

# Java
{% highlight Java %}
public class HelloWorld
{
  public static void main(String[] args)
  {
    System.out.println("Hello World!");
  }
}
{% endhighlight %}

# Rust
{% highlight Rust %}
fn main()
{
  println!("hello World!");
}
{% endhighlight %}

# Bash
{% highlight bash %}
user@computer:~/$ echo 'Hello World'
{% endhighlight %}

# python 2.7
{% highlight python %}
>>> print 'Hello World'
{% endhighlight %}

# python 3.x
{% highlight python %}
>>> print('Hello World')
{% endhighlight %}

# Brainfuck
{% highlight brainfuck %}
++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>.
{% endhighlight %}
