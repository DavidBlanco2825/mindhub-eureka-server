# Eureka Server

**Author:** [David Fernando Blanco](https://github.com/DavidBlanco2825)

## Overview

**Eureka Server** is a core component of the **NoteList** microservices architecture. It acts as a service registry, enabling the dynamic registration and discovery of microservices within the ecosystem. This allows other services such as **Task Service** and **User Service** to discover and communicate with each other without manual configuration.

Eureka Server is built using **Spring Cloud Netflix Eureka**, providing a robust and scalable solution for service discovery.

### Key Features

- **Service Registry**: Automatically registers all microservices running within the **NoteList** application.
- **Service Discovery**: Enables seamless communication between services by allowing them to discover each other's locations dynamically.
- **High Availability**: Supports cluster formation for redundancy and fault tolerance, ensuring continuous service discovery even if one instance fails.

As an integral part of the **NoteList** microservices architecture, Eureka Server ensures that services remain connected, providing reliable service discovery and registration.

## Technologies Used

- **Spring Boot**: Provides the foundational framework for developing the Eureka Server.
- **Spring Cloud Netflix Eureka**: Offers service registry and discovery features that simplify the microservice architecture.

## Getting Started

### Prerequisites

- **Java 17** or later
- **Maven 3.6** or later
- **Git** (for version control)

### Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/DavidBlanco2825/mindhub-eureka-server.git
    cd mindhub-eureka-server
    ```

2. **Build the project**:
    ```bash
    mvn clean install
    ```

3. **Run the application**:
    ```bash
    mvn spring-boot:run
    ```

4. **Access the Eureka Dashboard**:
    - The Eureka Dashboard is available at `http://localhost:8761`. This dashboard allows you to see the registered services and their statuses.
