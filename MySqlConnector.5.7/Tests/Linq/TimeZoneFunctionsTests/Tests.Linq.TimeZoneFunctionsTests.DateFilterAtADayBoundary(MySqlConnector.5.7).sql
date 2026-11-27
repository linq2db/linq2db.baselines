-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Dto`
FROM
	`ZonedRow` `r`
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @date Datetime -- DateTime
SET     @date = '2020-12-31'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @date

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @later Datetime -- DateTime
SET     @later = '2020-12-31 01:00:00'

SELECT
	COUNT(*)
FROM
	`ZonedRow` `r`
WHERE
	Date(`r`.`Dto`) = @later

