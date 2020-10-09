BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @dateTime DateTime
SET     @dateTime = '1992-01-11 01:11:21.100'
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`DateTimeValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`DateTimeValue` > @dateTime
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @dateTime DateTime
SET     @dateTime = '1993-01-11 01:11:21.100'
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t`.`DateTimeValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`DateTimeValue` > @dateTime
LIMIT @take

