-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @api String(1) -- AnsiStringFixedLength
SET     @api = 'F'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	@api IN (`p`.`Gender`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

