-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `ShiftedDateRow`
(
	`Id`,
	`Plain`,
	`Date`
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Plain`,
	`t1`.`Date`
FROM
	`ShiftedDateRow` `t1`
LIMIT 2

