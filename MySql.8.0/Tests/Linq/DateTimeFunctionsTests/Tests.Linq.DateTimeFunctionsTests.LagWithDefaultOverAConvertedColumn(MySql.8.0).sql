-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @fallback Datetime -- DateTime
SET     @fallback = '2026-05-25 09:00:00'

SELECT
	LAG(`r`.`Value`, 1, @fallback) OVER (ORDER BY `r`.`Id`)
FROM
	`CoarseConvertedRow` `r`
ORDER BY
	`r`.`Id`

