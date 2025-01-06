BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`MiddleName` = `t1`.`LastName`
	) as `c1`

