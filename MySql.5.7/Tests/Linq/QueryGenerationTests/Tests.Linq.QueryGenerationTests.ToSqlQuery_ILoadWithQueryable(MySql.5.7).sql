BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			(
				SELECT
					`p`.`ParentID`
				FROM
					`Parent` `p`
				WHERE
					`p`.`ParentID` = 1
				LIMIT 2
			) `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 2

BeforeExecute
DisposeTransaction
