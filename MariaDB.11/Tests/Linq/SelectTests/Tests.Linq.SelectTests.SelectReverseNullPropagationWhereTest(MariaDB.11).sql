BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `c_1`.`ParentID` = `p`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	(`p`.`ParentID` > 0 OR `p`.`Value1` > 0 OR `a_Parent`.`Value1` > 0)

