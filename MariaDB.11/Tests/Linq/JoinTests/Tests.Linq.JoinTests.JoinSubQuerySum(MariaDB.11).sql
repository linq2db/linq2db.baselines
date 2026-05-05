-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	Coalesce((
		SELECT
			Coalesce(SUM(`c_1`.`ChildID`), 0)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1
	), 0)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 0

