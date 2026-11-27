-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`Value1` IS NOT NULL AND `p`.`Value1` > 1
	) as `c1`

