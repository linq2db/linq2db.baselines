BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	EXISTS(
		SELECT
			`item_1`.`Value`
		FROM
			`TakeSkipClass` `item_1`
		GROUP BY
			`item_1`.`Value`
		HAVING
			COUNT(*) > 1
		LIMIT 1
	) as `c1`

