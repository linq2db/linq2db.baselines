-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

