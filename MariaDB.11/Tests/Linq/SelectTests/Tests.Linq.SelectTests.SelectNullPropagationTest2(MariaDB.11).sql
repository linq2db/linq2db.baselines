BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`gr`.`ParentID`,
	`gr`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `gr` ON `p`.`Value1` = `gr`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `gr`.`ParentID` = `a_Parent`.`ParentID`

