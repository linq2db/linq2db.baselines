BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`ch`.`ParentID`
		FROM
			`Child` `ch`
	) `t1`
ORDER BY
	`t1`.`ParentID`

