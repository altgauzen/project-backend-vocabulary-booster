SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
CONCAT(SUBSTRING(jhis.START_DATE, 9, 2), '/',
  SUBSTRING(jhis.START_DATE, 6, 2), '/',
  YEAR(jhis.START_DATE)) AS `Data de início`,
CONCAT(SUBSTRING(jhis.END_DATE, 9, 2), '/',
  SUBSTRING(jhis.END_DATE, 6, 2), '/',
  YEAR(jhis.END_DATE)) AS `Data de rescisão`,
ROUND((DATEDIFF(jhis.END_DATE, jhis.START_DATE)/365), 2) AS `Anos trabalhados`
FROM hr.employees as emp
INNER JOIN hr.job_history AS jhis
ON emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
