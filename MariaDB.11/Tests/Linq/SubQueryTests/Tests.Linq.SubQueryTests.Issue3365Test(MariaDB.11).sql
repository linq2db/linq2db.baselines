BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Assignee`
FROM
	(
		SELECT
			(
				SELECT
					`a_GrandChildren`.`ParentID`
				FROM
					`GrandChild` `a_GrandChildren`
				WHERE
					`x`.`ParentID` = `a_GrandChildren`.`ParentID` AND `x`.`ChildID` = `a_GrandChildren`.`ChildID`
				LIMIT 1
			) as `Assignee`
		FROM
			`Child` `x`
	) `t1`
ORDER BY
	`t1`.`Assignee`

