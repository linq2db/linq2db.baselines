BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN LATERAL (
			SELECT
				`a_Children`.`ParentID`
			FROM
				`Child` `a_Children`
			WHERE
				`p`.`ParentID` = `a_Children`.`ParentID`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`ParentID` IS NOT NULL

