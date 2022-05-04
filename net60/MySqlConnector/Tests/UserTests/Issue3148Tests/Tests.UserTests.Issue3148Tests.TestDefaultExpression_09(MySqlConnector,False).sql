BeforeExecute
-- MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		LEFT JOIN `Parent` `a_Parent` ON `x`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	(
		SELECT
			*
		FROM
			`GrandChild` `t1`
		WHERE
			`x`.`ParentID` = `t1`.`ParentID` AND `x`.`ChildID` = `t1`.`ChildID`
		LIMIT 1
	) <> (
		SELECT
			*
		FROM
			`GrandChild` `t2`
		WHERE
			`x`.`ParentID` = `t2`.`ParentID` AND `x`.`ChildID` = `t2`.`ChildID`
		LIMIT 1
	) AND
	`x`.`ParentID` <> (
		SELECT
			`p`.`ChildID`
		FROM
			`Child` `p`
		WHERE
			`a_Parent`.`ParentID` = `p`.`ParentID`
		LIMIT 1
	)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		LEFT JOIN `Parent` `a_Parent` ON `x`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	(
		SELECT
			*
		FROM
			`GrandChild` `t1`
		WHERE
			`x`.`ParentID` = `t1`.`ParentID` AND `x`.`ChildID` = `t1`.`ChildID`
		LIMIT 1
	) <> (
		SELECT
			*
		FROM
			`GrandChild` `t2`
		WHERE
			`x`.`ParentID` = `t2`.`ParentID` AND `x`.`ChildID` = `t2`.`ChildID`
		LIMIT 1
	) AND
	`x`.`ParentID` <> (
		SELECT
			`p`.`ChildID`
		FROM
			`Child` `p`
		WHERE
			`a_Parent`.`ParentID` = `p`.`ParentID`
		LIMIT 1
	)

