-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @boxed String(1) -- AnsiStringFixedLength
SET     @boxed = 'M'

SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @boxed

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

