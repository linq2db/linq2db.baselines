-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value String(1) -- AnsiStringFixedLength
SET     @value = 'M'

SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @value

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

