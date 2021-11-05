USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE emp_total INT;
  SELECT COUNT(*)
  FROM hr.employees
  WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
  INTO emp_total;
  RETURN emp_total;
END $$

DELIMITER ;
