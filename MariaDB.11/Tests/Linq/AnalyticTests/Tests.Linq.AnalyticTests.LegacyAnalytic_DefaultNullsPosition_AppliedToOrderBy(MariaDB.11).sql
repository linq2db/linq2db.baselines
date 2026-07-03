-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	SUM(`p`.`Value1`) OVER (ORDER BY `p`.`Value1`)
FROM
	`Parent` `p`

