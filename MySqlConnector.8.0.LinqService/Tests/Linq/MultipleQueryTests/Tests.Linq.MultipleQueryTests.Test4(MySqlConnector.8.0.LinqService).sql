BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

