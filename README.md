# Welcom
This is a simple web app project created to practice DevOps skills and containerization. It serves as an introduction to Docker, GitHub, and Jenkins.

# Description
The "welcom" app is a basic HTML and CSS project, with the following files:
- welcom.html: The main HTML file of the app.
- style.css: The styling for the app to make it look neat.
This project marks the first step after a break from DevOps, focusing on understanding the basics of version control, containerization, and continuous integration.

# Features
- Simple, static web page.
- Basic styling using CSS.
- Ready to be containerized using Docker.
- Set up for CI/CD with Jenkins.
# Prerequisites
* Docker installed on your machine.
* Jenkins setup for CI/CD pipeline.
* GitHub account to access the repository.
# How to Run
1- Clone the repository:
``` bash
git clone https://github.com/yourusername/welcom.git
```
2- Build the Docker image:
``` bash
docker build -t welcom .
```
3- Run the Docker container:
```bash
docker run -d -p 8080:80 welcom
```
Open your browser and go to `http://localhost:8080` to see the app in action.

# Jenkins Setup
1- Create a Jenkins pipeline to automate the building and deployment of the Docker container.
2- Ensure the pipeline includes steps to build, test, and deploy the Docker image.
# Future Improvements
- Add interactivity with JavaScript.
- Implement a backend using Node.js or another framework.
- Add more complex CI/CD workflows in Jenkins.
# License
This project is licensed under the MIT License.


