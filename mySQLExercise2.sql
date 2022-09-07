/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select P.NAME, C.NAME
FROM PRODUCTS AS P
INNER JOIN CATEGORIES AS C
ON P.CATEGORYID = C.CATEGORYID
WHERE C.CATEGORYID= 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT PRODUCTS.NAME, PRODUCTS.PRICE, REVIEWS.RATING
FROM PRODUCTS
INNER JOIN REVIEWS
ON products.PRODUCTID= REVIEWS.PRODUCTID
WHERE REVIEWS.RATING =5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.firstname, employees.lastname, Sum(sales.quantity) as total
from sales
inner join employees 
on sales.EmployeeID = employee.EmployeeID
group by employees.EmployeeID	
order by total desc
limit 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.name as 'department name', categories.name as 'category name'
from departments
inner join categories
on departments.DepartmentID = categories.DepartmentID
where categories.name = 'appliances' or categories.name = games

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select p.name, sum(s.quantity) as 'total units sold', 
 sum(s.quantity * s.priceperunit) as 'total price sold'
 from products as p
 inner join sales as s 
 on s.productID= p.productID
 where name like '%eagles: hotel california'

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.name, reviews.reviewer, reviews.rating, reviews.comment
from products
inne join reviews
on products.productID = reviews.prodictID
where products.productID = 857 and reviews.rating = 1;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */