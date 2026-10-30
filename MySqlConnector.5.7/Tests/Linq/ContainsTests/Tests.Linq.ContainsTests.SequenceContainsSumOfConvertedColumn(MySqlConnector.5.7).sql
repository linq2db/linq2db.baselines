-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @total Int32
SET     @total = 700

SELECT
	COUNT(*)
FROM
	`ConvertedAmount` `t`
WHERE
	@total IN (
		SELECT
			SUM(`g_1`.`Cents`)
		FROM
			`ConvertedAmount` `g_1`
		GROUP BY
			`g_1`.`Group`
	)

