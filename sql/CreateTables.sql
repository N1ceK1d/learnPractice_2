CREATE TABLE Departments 
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Employees (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(255) NOT NULL,
    experience INT NOT NULL,
    department_id INT NOT NULL,
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);
    
CREATE TABLE Bosses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(255) NOT NULL,
    experience INT NOT NULL,
    department_id INT NOT NULL,
    login VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE SpareParts (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE Parts (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    spare_id INT,
    FOREIGN KEY (spare_id) REFERENCES SpareParts(id)
);

CREATE TABLE Customers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    discount INT
);

CREATE TABLE Orders (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    scope_of_work INT NOT NULL,
    customer_id INT NOT NULL,
    department_id INT NOT NULL,
    spare_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (spare_id) REFERENCES SpareParts(id),
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);