BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `c_1`
		WHERE
			`c_1`.`Value1` IS NULL
	) as `c1`

