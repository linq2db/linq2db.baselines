BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	(
		SELECT
			SUM(`c_1`.`ChildID`)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 0

