-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`PK`,
	`t`.`ID`,
	`t`.`GV`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID`
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_1` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_2` `t1`

