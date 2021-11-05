USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
  dep.DEPARTMENT_NAME AS `Departamento`,
  jobs.JOB_TITLE AS `Cargo`
  FROM hr.employees AS emp
  INNER JOIN hr.departments AS dep
  ON emp.department_ID = dep.department_ID
  INNER JOIN hr.jobs as jobs
  ON emp.JOB_ID = jobs.JOB_ID
  WHERE emp.EMAIL = email
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
