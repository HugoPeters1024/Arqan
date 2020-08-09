# Arqan
Arqan is a classlib which basically serves as a C# wrapper for OpenGL functions and enums as well as GLFW functions and enums.

## Installation
Due to the differences between how OpenGL works per operating system I maintain two versions of Arqan. One for Windows and one for Linux. 

```
dotnet add package Arqan.Windows
dotnet add package Arqan.Linux
```

## Building

### Requirements
To build this library you need dotnet core 2.1 or newer. I recommend going with the latest version when possible.

### Sources
This git repository is divided in two branches. One for the Linux source files and one for the Windows source files. The difference between them is where they get their window handling stuff from.
On Linux this is glX from the X windowing system and on Windows it is wGL because of, well, Windows. 

## Usage

```C#
GL10.glColorMask();
GL10.glFlush();
GL20.glCreateProgram();
GLFW.glfwInit();
```

## Dependencies
Just refering the library wont cut it. You also need to make sure you got the right 3rd-party libraries.

### OpenGL
#### Windows
Most Windows system ship a dll called "opengl32.dll". If not, make sure your hardware supports OpenGL and that your drivers are up-to-date.

#### Linux
I cannot provide instructions for all distros because I don't know all of them. Nor would that be doable. So I just go along with the most popular one, which in this case is Ubuntu. Run below commands to
install OpenGL on your system, if you have not done so already.

```bash
sudo apt-get update
sudo apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev
```

### GLFW
#### Windows
For convenience sake I included the dll file in the the repo, it is located right here in the master branch. **Make sure that it gets included in the folder where your application runs from.**

#### Linux
The developers did not provide a pre-compiled library for Linux because that would not be applicable for all distros. So by default they suggest to compile the library on your machine using cmake and such.
However, on some distros glfw can be installed from your package repository. To install glfw on Ubuntu for example, run the following commands:

```bash
sudo apt-get update
sudo apt-get install libglfw3 libglfw3-dev
```

## Contributing
I would highly appreciate it if you would help me polish this library. I have not had the chance yet to test all wrapped methods in the classes. I actually generated
them based on an XML provided by the Khronos Group a couple of years ago. So probably there are new functions and enums already which have not been integrated yet. So feel free to send in a pull request!

## License
[MIT](https://choosealicense.com/licenses/mit/)
