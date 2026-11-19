-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	`x`.`X`
FROM
	`Parent` `p`
		INNER JOIN LATERAL (
			SELECT
				`p`.`Value1` as `X`
			UNION ALL
			SELECT
				CAST(7 AS SIGNED) as `X`
		) `x` ON 1=1

