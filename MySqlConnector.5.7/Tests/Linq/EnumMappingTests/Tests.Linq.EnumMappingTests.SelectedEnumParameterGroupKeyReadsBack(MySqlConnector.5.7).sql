-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @gender Int32
SET     @gender = 1

SELECT
	`g_1`.`Gender`,
	@gender
FROM
	`Person` `g_1`
GROUP BY
	`g_1`.`Gender`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

