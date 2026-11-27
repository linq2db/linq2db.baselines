-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(`p`.`ID` AS UNSIGNED) | CAST((4294967295 - CAST(`p`.`ID` + 4 AS UNSIGNED)) AS UNSIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

