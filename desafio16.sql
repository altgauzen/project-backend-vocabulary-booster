USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT COUNT(*)
  FROM hr.job_history AS jh
  INNER JOIN hr.employees AS e
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email
  GROUP BY jh.EMPLOYEE_ID
  INTO total_empregos;
  RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
