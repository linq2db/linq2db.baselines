BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`t1`.`ParentID`
			FROM
				`Child` `t1`
			LIMIT 1
		) `t2` ON 1=1

