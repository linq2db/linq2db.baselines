-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value String(1) -- AnsiStringFixedLength
SET     @Value = 'F'

SELECT
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @Value

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

