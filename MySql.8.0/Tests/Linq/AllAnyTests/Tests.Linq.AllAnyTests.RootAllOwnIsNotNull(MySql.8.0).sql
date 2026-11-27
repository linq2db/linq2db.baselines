-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL AND `p`.`Value1` <= 0
	) as `c1`

