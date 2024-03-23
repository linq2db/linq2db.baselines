BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ParentID`
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

