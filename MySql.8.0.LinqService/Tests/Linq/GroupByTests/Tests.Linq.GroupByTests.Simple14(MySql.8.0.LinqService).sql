BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Detail`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN (
			SELECT
				`d`.`ParentID` as `Detail`
			FROM
				`Child` `d`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`Detail`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

