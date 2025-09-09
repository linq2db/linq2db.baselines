BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`Parent_1`.`ParentID`,
	`Parent_1`.`Value1`,
	(
		SELECT
			`y1`.`ParentID`
		FROM
			`Child` `y1`
		WHERE
			`Parent_1`.`ParentID` = `y1`.`ParentID` AND `Parent_1`.`Value1` = `y1`.`ParentID`
		LIMIT 1
	),
	(
		SELECT
			`y1_1`.`ChildID`
		FROM
			`Child` `y1_1`
		WHERE
			`Parent_1`.`ParentID` = `y1_1`.`ParentID` AND `Parent_1`.`Value1` = `y1_1`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `Parent_1`
		LEFT JOIN `Child` `y4` ON `Parent_1`.`ParentID` = `y4`.`ParentID` AND `Parent_1`.`Value1` = `y4`.`ParentID`
WHERE
	`Parent_1`.`ParentID` = 1 AND `Parent_1`.`Value1` IS NOT NULL
ORDER BY
	`Parent_1`.`ParentID`

