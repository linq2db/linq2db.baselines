BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Key_1`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`g_1`.`ParentID` as `Key_1`
		FROM
			`Child` `g_1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`Key_1` = `d`.`ParentID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

