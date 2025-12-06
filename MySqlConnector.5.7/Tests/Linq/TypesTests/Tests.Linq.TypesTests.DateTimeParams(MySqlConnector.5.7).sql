-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @dateTime Datetime -- DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'

SELECT
	`t`.`DateTimeValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`DateTimeValue` > @dateTime
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @dateTime Datetime -- DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'

SELECT
	`t`.`DateTimeValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`DateTimeValue` > @dateTime
LIMIT 1

