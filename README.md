# Spring Boot MVC Application

A modern Spring Boot MVC web application built with Spring Boot 3.1.5, Thymeleaf templating, and Maven.

## Features

- **Spring Boot 3.1.5** - Latest Spring Boot framework
- **Spring MVC** - Model-View-Controller web framework
- **Thymeleaf** - Server-side Java/XML template engine
- **Maven** - Build automation and dependency management
- **Java 17** - Long-term support Java version

## Project Structure

```
spring/
├── src/
│   ├── main/
│   │   ├── java/com/example/
│   │   │   ├── Application.java          # Main Spring Boot application
│   │   │   └── controller/
│   │   │       └── HomeController.java   # MVC controller
│   │   └── resources/
│   │       ├── application.properties    # Spring Boot configuration
│   │       └── templates/
│   │           ├── index.html            # Home page
│   │           ├── hello.html            # Hello page
│   │           └── result.html           # Form result page
│   └── test/java/com/example/            # Test files
├── pom.xml                                # Maven configuration
└── README.md                              # This file
```

## Prerequisites

- Java 17 or higher
- Maven 3.6+

## Getting Started

### Build the Project

```bash
mvn clean package
```

This command will:
- Clean any previous build artifacts
- Download dependencies
- Compile the source code
- Run tests
- Package the application

### Run the Application

```bash
mvn spring-boot:run
```

The application will start on:
```
http://localhost:8080
```

### Access the Application

- **Home Page**: http://localhost:8080/
- **Hello Page**: http://localhost:8080/hello?name=YourName
- **Form Submission**: Use the form on the home page to submit data

## Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/`      | Home page |
| GET    | `/hello` | Hello page with name parameter |
| POST   | `/submit`| Form submission endpoint |

## Technologies Used

- **Framework**: Spring Boot 3.1.5
- **Language**: Java 17
- **Build Tool**: Maven
- **Template Engine**: Thymeleaf
- **Web Server**: Embedded Tomcat

## Configuration

The application configuration is defined in `src/main/resources/application.properties`:

```properties
server.port=8080                  # Server port
spring.application.name=spring-boot-mvc
spring.thymeleaf.cache=false      # Disable template caching for development
```

## Development

### IDE Setup

1. Open the project in your IDE (IntelliJ IDEA, Eclipse, or VS Code)
2. IDE will auto-detect Maven configuration
3. Dependencies will be downloaded automatically

### Hot Reload

Spring Boot DevTools is included for automatic restart on file changes during development.

## Testing

Run tests with:
```bash
mvn test
```

## Troubleshooting

### Port Already in Use
If port 8080 is already in use, change it in `application.properties`:
```properties
server.port=8081
```

### Maven Issues
Clear Maven cache and rebuild:
```bash
mvn clean install
```

### Thymeleaf Not Found
Ensure `spring-boot-starter-thymeleaf` dependency is in `pom.xml`

## License

This project is open source and available under the MIT License.

## Author

Created as a Spring Boot MVC demonstration project.
