BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `id`
		WHERE
			`t1`.`ParentID` = `id`.`ParentID` AND `id`.`ChildID` < 30
	)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

