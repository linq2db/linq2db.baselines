-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t2`.`Count1` + `t2`.`Count1`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*) as `Count1`
				FROM
					`Child` `c_1`
				WHERE
					`t1`.`ParentID` = `c_1`.`ParentID`
			) as `Count1`
		FROM
			`Parent` `t1`
	) `t2`

