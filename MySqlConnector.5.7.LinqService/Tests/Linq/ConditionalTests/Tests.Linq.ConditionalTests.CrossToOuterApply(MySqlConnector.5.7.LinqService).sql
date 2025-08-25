BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`ParentID`,
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		ORDER BY
			`a_Children`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`ChildID`
		FROM
			`Child` `a_Children_1`
		WHERE
			`p`.`ParentID` = `a_Children_1`.`ParentID`
		ORDER BY
			`a_Children_1`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_2`.`ParentID`
		FROM
			`Child` `a_Children_2`
		WHERE
			`p`.`ParentID` = `a_Children_2`.`ParentID`
		ORDER BY
			`a_Children_2`.`ChildID`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_3`.`ChildID`
		FROM
			`Child` `a_Children_3`
		WHERE
			`p`.`ParentID` = `a_Children_3`.`ParentID`
		ORDER BY
			`a_Children_3`.`ChildID`
		LIMIT 1
	)
FROM
	`Parent` `p`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

