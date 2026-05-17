-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`i`.`Id`
FROM
	`TestEnumTable` `i`
WHERE
	`i`.`Value` IN (1, 2)
ORDER BY
	`i`.`Id`

