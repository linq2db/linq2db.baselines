-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Key_1`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN LATERAL (
			SELECT DISTINCT
				`d`.`ParentID` as `Key_1`
			FROM
				`Child` `d`
			WHERE
				`m_1`.`ParentID` = `d`.`ParentID`
		) `d_1` ON 1=1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

