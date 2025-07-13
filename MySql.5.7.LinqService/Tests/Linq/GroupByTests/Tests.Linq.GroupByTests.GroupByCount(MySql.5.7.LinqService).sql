BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
		GROUP BY
			`gr`.`ParentID`
	) `t1`

