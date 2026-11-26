-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Datetime -- DateTimeOffset
SET     @p = CONVERT_TZ('2020-06-15 11:20:00.000000', '+00:00', '+00:00')

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	`r`.`Dto` = @p

