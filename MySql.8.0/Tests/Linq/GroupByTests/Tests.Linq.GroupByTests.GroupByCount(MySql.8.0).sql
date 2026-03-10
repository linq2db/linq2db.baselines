-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`gr`.`ParentID`
		FROM
			`Child` `gr`
	) `t1`

