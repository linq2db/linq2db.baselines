BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`PK`,
	`t`.`ID`,
	`t`.`GV`
FROM
	`test_in_1` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID` OR `t`.`ID` IS NULL AND `p`.`ID` IS NULL
	)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`PK`,
	`t1`.`ID`,
	`t1`.`GV`
FROM
	`test_in_2` `t1`

