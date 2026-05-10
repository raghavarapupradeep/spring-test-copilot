<!-- Spring Boot MVC Project Setup Instructions -->

## Project Overview
This is a Spring Boot MVC web application with the following features:
- Spring Boot 3.1.5
- Spring MVC for web layer
- Thymeleaf for templating
- Maven for build management
- Java 17 runtime

## Setup Progress

- [x] Create project structure
- [x] Setup pom.xml with dependencies
- [ ] Build the project
- [ ] Run the application

## Build and Run Instructions

### Build the Project
```bash
mvn clean package
```

### Run the Application
```bash
mvn spring-boot:run
```

The application will start on http://localhost:8080

## Project Structure
```
spring/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/
│   │   │       ├── Application.java
│   │   │       └── controller/
│   │   │           └── HomeController.java
│   │   └── resources/
│   │       ├── application.properties
│   │       └── templates/
│   │           └── index.html
│   └── test/
├── pom.xml
└── README.md
```
