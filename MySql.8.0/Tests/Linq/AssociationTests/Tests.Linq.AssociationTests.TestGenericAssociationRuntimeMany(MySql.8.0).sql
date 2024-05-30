BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ParentID`,
	`t`.`Value1`,
	`m_1`.`ParentID`,
	`m_1`.`ChildID`
FROM
	`Parent` `t`
		INNER JOIN `Child` `m_1` ON `t`.`ParentID` = `m_1`.`ParentID`
WHERE
	`m_1`.`ChildID` > 1 AND `t`.`ParentID` IN (1, 5)
ORDER BY
	`t`.`ParentID`

