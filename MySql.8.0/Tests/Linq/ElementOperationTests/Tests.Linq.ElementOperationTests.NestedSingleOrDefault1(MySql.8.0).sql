BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
			WHERE
				`p`.`ParentID` = `c_1`.`ParentID`
		) `t1` ON 1=1

