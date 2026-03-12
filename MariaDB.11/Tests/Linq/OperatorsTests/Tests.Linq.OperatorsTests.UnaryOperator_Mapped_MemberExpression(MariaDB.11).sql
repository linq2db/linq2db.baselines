-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Int32
SET     @value = 6

SELECT
	`r`.`Id`,
	`r`.`Field`,
	`r`.`FieldN`,
	`r`.`FieldClass`
FROM
	`OperatorTable` `r`
WHERE
	`r`.`Field` * 3 = @value AND `r`.`FieldN` * 3 = @value AND
	`r`.`FieldClass` * 3 = @value

