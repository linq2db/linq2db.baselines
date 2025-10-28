BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Date Datetime -- DateTime
SET     @Date = '2009-09-20'

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`DateTimeValue2`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`SmallIntValue`,
	`t`.`IntValue`,
	`t`.`BigIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	Date(`t`.`DateTimeValue`) > @Date

