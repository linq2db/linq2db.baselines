-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `t1`

