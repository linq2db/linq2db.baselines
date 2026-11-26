-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @date Datetime -- DateTime
SET     @date = '2020-12-31'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @date

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @later Datetime -- DateTime
SET     @later = '2020-12-31 01:00:00'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @later

