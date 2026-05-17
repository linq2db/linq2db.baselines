-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'M'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @gender

