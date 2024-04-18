BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID`,
	`Person` `t`

