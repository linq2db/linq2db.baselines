-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` > 1

