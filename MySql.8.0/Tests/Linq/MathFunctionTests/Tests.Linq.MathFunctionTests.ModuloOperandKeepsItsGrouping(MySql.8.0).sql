-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	(`p`.`ID` + 5) % 3
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	(100 - `p`.`ID`) % 3
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

