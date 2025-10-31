-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

