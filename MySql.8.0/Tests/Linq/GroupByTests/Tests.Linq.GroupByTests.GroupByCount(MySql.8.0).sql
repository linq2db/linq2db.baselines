-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
	) `t1`

