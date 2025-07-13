BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @fm String(1) -- AnsiStringFixedLength
SET     @fm = 'F'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` <> @fm

