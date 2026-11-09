-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'F'

SELECT
	`p`.`PersonID`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` <> @gender

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

