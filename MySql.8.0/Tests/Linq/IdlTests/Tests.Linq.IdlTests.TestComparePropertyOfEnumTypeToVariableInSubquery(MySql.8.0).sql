-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

