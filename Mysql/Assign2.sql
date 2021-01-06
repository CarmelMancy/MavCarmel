-- SUM OF THE ENTIRE QUANTITY
SELECT SUM(QUANTITY) FROM PMS_MANUFACTURING;
-- SUM OF QUANTITY FOR EACH PRODUCT
SELECT PRODUCT_ID, SUM(QUANTITY) FROM PMS_MANUFACTURING
GROUP BY PRODUCT_ID;
-- SUM OF QUANTITY, MAX OF QUANTITY FOR EACH PRODUCT
SELECT PRODUCT_ID, SUM(QUANTITY), MAX(QUANTITY) FROM PMS_MANUFACTURING
GROUP BY PRODUCT_ID;
-- SUM OF QUANTITY BASED ON PRODUCT AND ITS AVAILABILTY
SELECT PRODUCT_ID, SUM(QUANTITY), AVAILABILITY FROM PMS_MANUFACTURING
GROUP BY PRODUCT_ID, AVAILABILITY;
SELECT PRODUCT_ID, AVAILABILITY , SUM(QUANTITY)FROM PMS_MANUFACTURING
GROUP BY PRODUCT_ID, AVAILABILITY;
-- SUM OF QUANTITY BASED ON PRODUCT AND ITS AVAILABILTY FOR PRODUCTS (P001 AND P002)
SELECT PRODUCT_ID, AVAILABILITY , SUM(QUANTITY) FROM PMS_MANUFACTURING
WHERE PRODUCT_ID IN ('P001','P002')
GROUP BY PRODUCT_ID, AVAILABILITY;
-- SUM OF QUANTITY BASED ON PRODUCT AND ITS AVAILABILTY FOR PRODUCTS (P001 AND P002)
SELECT PRODUCT_ID, AVAILABILITY , SUM(QUANTITY) FROM PMS_MANUFACTURING
WHERE PRODUCT_ID IN ('P001','P002')
GROUP BY PRODUCT_ID, AVAILABILITY;
-- SUM OF QUANTITY BASED ON PRODUCT AND ITS AVAILABILTY FOR PRODUCTS (P001 AND P002) AND
-- SUM OF QUANTITY SHOULD BE LESS THAN 1000
SELECT PRODUCT_ID, AVAILABILITY , SUM(QUANTITY) FROM PMS_MANUFACTURING
WHERE PRODUCT_ID IN ('P001','P002')
GROUP BY PRODUCT_ID, AVAILABILITY
HAVING SUM(QUANTITY)<1000;

-- SUM OF QUANTITY BASED ON PRODUCT AND ITS AVAILABILTY FOR PRODUCTS (P001 AND P002)
-- SUM OF QUANTITY SHOULD BE LESS THAN 1000
-- DISPLAYED IN MAX TO MIN OF SUMMED QUANTITY
SELECT PRODUCT_ID, AVAILABILITY , SUM(QUANTITY) FROM PMS_MANUFACTURING
WHERE PRODUCT_ID IN ('P001','P002')
GROUP BY PRODUCT_ID, AVAILABILITY
HAVING SUM(QUANTITY)<1000
order by sum(quantity) desc;

- List the employees who earn more than their own department’s average salary and display them
-- in Department_ID order. In select list we have MANAGER_ID, MANAGER_NAME, JOB, SALARY,and DEPARTMENT_ID.
-- CO-RELATED SUB QUERY
SELECT MANAGER_ID, MANAGER_NAME, JOB, SALARY, DEPARTMENT_ID
FROM PMS_MANAGER_DETAILS PMD1
WHERE SALARY > (SELECT AVG(SALARY) FROM PMS_MANAGER_DETAILS PMD2 WHERE PMD2.DEPARTMENT_ID = PMD1.DEPARTMENT_ID )
ORDER BY Department_ID;