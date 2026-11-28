-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @date Datetime -- DateTime
SET     @date = '2020-12-31'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @date

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @later Datetime -- DateTime
SET     @later = '2020-12-31 01:00:00'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @later

