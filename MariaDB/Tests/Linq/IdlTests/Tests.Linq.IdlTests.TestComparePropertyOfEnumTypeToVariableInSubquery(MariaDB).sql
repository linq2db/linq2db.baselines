BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'O'

SELECT
	`x`.`PersonID`,
	`x`.`Diagnosis`
FROM
	`Patient` `x`
		INNER JOIN `Person` `y` ON `x`.`PersonID` = `y`.`PersonID`
WHERE
	`y`.`Gender` = @gender

