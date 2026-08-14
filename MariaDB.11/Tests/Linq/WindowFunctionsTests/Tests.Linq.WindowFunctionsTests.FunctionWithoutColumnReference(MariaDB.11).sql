-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(`t`.`IntValue`) OVER () > 0
FROM
	`WindowFunctionTestEntity` `t`

