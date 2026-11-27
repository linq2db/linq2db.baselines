-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Datetime -- DateTimeOffset
SET     @p = TIMESTAMP '2020-06-15 11:20:00.000000+00:00'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	`r`.`Dto` = @p

