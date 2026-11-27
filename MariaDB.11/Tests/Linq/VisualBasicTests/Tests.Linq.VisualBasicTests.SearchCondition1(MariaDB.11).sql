-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	NOT `t`.`BoolValue` AND (`t`.`SmallIntValue` = 5 OR `t`.`SmallIntValue` = 7 OR CAST(`t`.`SmallIntValue` | 2 AS SIGNED) = 10)

