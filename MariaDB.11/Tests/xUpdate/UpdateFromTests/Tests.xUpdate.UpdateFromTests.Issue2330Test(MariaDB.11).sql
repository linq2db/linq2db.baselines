-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`Parent` `w`
		INNER JOIN `Child` `b` ON `w`.`ParentID` = `b`.`ParentID`
SET
	`w`.`Value1` = `b`.`ChildID`
WHERE
	`b`.`ChildID` = (
		SELECT
			MAX(`t1`.`ParentID`)
		FROM
			`Child` `t1`
	) AND
	`b`.`ChildID` = -1

