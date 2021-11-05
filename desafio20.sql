USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
  dep.DEPARTMENT_NAME AS `Departamento`,
  jobs.JOB_TITLE AS `Cargo`
  FROM hr.job_history AS jhis
  INNER JOIN hr.employees AS emp
  ON emp.EMPLOYEE_ID = jhis.EMPLOYEE_ID
  INNER JOIN hr.departments AS dep
  ON jhis.department_ID = dep.department_ID
  INNER JOIN hr.jobs as jobs
  ON jhis.JOB_ID = jobs.JOB_ID
  
  WHERE emp.EMAIL = email
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
