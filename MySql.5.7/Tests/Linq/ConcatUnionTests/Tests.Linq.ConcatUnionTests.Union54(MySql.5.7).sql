-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p1`.`ParentID`,
	`p1`.`ParentID`,
	`p1`.`Value1`,
	NULL,
	NULL,
	NULL
FROM
	`Parent` `p1`
UNION
SELECT
	`t1`.`ParentID`,
	NULL,
	NULL,
	`t1`.`cond`,
	`t1`.`cond`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			Coalesce(`p2`.`Value1`, 0) as `ParentID`,
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
			) as `cond`,
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

