-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`u`.`city`,
	`u`.`street`,
	`u`.`building_number`
FROM
	`User` `u`
LIMIT 2

