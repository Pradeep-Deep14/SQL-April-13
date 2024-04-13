DROP TABLE IF EXISTS employees;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT
);


INSERT INTO Employees (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101),
(107, 'Michael', 'C', NULL),
(108, 'Sarah', 'C', 107),
(109, 'Emily', 'C', 107),
(110, 'Brian', 'C', 107);

SELECT * FROM EMPLOYEES

--Write a SQL query to find the names of 
--managers who have at least five direct reports. 
--Return the result table in any order.

--Ensure that no employee is their own manager.

--The result format should include only the names
--of the managers meeting the criteria.


SELECT E2.NAME AS MANAGER_NAME
FROM EMPLOYEES AS E1
JOIN EMPLOYEES AS E2 
ON E1.MANAGERID=E2.ID
GROUP BY E2.NAME,E1.MANAGERID
HAVING COUNT(E1.ID)>=5



