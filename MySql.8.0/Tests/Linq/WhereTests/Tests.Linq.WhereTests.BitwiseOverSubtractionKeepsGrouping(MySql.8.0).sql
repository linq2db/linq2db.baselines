-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(CAST(`p`.`ID` AS SIGNED) & `p`.`ID` - 10 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

