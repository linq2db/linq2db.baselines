BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `t2`

