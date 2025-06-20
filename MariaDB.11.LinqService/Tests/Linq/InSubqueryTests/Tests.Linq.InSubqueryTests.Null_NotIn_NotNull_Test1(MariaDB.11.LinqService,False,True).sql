BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` IS NULL OR `t`.`ID` NOT IN (
		SELECT
			`p`.`ID`
		FROM
			`test_in_2` `p`
	)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

