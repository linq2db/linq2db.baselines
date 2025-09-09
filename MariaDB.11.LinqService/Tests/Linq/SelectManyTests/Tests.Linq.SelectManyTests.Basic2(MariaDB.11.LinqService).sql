BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`
		CROSS JOIN `Child` `t1`

