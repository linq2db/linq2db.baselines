BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`m_1`.`ChildID`,
	`m_1`.`ParentID_1`,
	`d_1`.`ParentID`,
	`d_1`.`ChildID`,
	`d_1`.`GrandChildID`,
	`a_Child`.`ParentID`,
	`a_Child`.`ChildID`,
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	(
		SELECT DISTINCT
			`d`.`ParentID`,
			`d`.`ChildID`,
			`t1`.`ParentID` as `ParentID_1`
		FROM
			(
				SELECT DISTINCT
					`p`.`ParentID`
				FROM
					`Parent` `p`
			) `t1`
				INNER JOIN `Child` `d` ON `t1`.`ParentID` = `d`.`ParentID`
	) `m_1`
		INNER JOIN `GrandChild` `d_1` ON `m_1`.`ParentID` = `d_1`.`ParentID` AND `m_1`.`ChildID` = `d_1`.`ChildID`
		LEFT JOIN `Child` `a_Child` ON `d_1`.`ParentID` = `a_Child`.`ParentID` AND `d_1`.`ChildID` = `a_Child`.`ChildID`
		LEFT JOIN `Parent` `a_Parent` ON `a_Child`.`ParentID` = `a_Parent`.`ParentID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`GrandChild` `a_GrandChildren`
		WHERE
			`p`.`ParentID` = `a_GrandChildren`.`ParentID`
	),
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

