-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`PK`,
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` NOT IN (
		SELECT
			`p`.`ID`
		FROM
			`test_in_2` `p`
	)
ORDER BY
	`t`.`PK`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_1` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`PK`,
	`t1`.`ID`
FROM
	`test_in_2` `t1`

