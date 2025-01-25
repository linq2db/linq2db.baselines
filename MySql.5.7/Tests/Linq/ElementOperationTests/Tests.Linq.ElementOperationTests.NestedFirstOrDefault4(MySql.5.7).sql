BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d_1`.`ParentID`,
	`d_1`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN (
			SELECT DISTINCT
				`d`.`ChildID`,
				`d`.`ParentID`
			FROM
				`Child` `d`
			WHERE
				`d`.`ParentID` > 0
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`ParentID`
ORDER BY
	`d_1`.`ChildID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

