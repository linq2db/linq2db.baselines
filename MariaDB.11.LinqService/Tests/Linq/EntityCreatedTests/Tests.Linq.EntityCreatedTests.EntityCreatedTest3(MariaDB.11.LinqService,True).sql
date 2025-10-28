BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 3

