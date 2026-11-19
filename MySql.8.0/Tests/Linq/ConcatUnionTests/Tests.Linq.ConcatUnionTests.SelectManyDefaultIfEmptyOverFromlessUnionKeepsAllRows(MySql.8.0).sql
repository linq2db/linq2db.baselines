-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	`x`.`X`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				CAST(1 AS SIGNED) as `X`
			UNION ALL
			SELECT
				CAST(2 AS SIGNED) as `X`
		) `x` ON 1=1

