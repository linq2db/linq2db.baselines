-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Item1`,
	`d`.`ChildID`,
	`d`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID` as `Item1`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON CAST(`m_1`.`Item1` AS SIGNED) = `d`.`ParentID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

