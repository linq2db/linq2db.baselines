-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`ParentID`,
	`p`.`Value1`,
	NULL,
	NULL,
	NULL
FROM
	`Parent` `p`
UNION
SELECT
	Coalesce(`t1`.`Value1`, 0),
	NULL,
	NULL,
	`t1`.`ParentID`,
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			`p2`.`Value1`,
			(
				SELECT
					`a_Children`.`ParentID`
				FROM
					`Child` `a_Children`
				WHERE
					`p2`.`ParentID` = `a_Children`.`ParentID`
				ORDER BY
					`a_Children`.`ChildID` DESC
				LIMIT 1
			) as `ParentID`,
			(
				SELECT
					`a_Children_1`.`ChildID`
				FROM
					`Child` `a_Children_1`
				WHERE
					`p2`.`ParentID` = `a_Children_1`.`ParentID`
				ORDER BY
					`a_Children_1`.`ChildID` DESC
				LIMIT 1
			) as `ChildID`
		FROM
			`Parent` `p2`
	) `t1`

