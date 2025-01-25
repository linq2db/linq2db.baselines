BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 1

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
		LIMIT @take
	) as `c1`

