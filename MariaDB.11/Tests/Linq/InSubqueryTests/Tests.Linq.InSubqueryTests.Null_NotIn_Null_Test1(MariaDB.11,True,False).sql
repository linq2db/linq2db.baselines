BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	`t`.`ID` IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			`t`.`ID` = `p`.`ID`
	)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

