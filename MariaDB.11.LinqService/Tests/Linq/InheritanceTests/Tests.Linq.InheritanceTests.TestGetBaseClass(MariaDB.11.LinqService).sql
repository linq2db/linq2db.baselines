BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`Value1`,
	`x`.`ParentID`
FROM
	`Parent` `x`
WHERE
	`x`.`Value1` = 2 OR `x`.`Value1` = 1

