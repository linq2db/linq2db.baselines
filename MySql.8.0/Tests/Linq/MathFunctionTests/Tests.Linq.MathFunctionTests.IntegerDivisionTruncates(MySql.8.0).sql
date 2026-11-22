-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	(`p`.`ID` * 7 + 1) DIV 2
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
	(`p`.`ID` * -7 - 1) DIV 2
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
	(`p`.`ID` * 7 + 1) DIV (`p`.`ID` - 100)
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
	(CAST(`p`.`ID` AS SIGNED) * 9 + 2) DIV 4
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
	(CAST(`p`.`ID` AS UNSIGNED) * 7 + 1) DIV 2
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
	(CAST(`p`.`ID` AS UNSIGNED) * 9 + 2) DIV 4
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
	(`p`.`ID` * 7 + 1) DIV 2
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
DECLARE @divisor Int32
SET     @divisor = 4

SELECT
	(`p`.`ID` * 9 + 2) DIV @divisor
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
	-(`p`.`ID` * 7 + 1)
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
	`p`.`ID`
FROM
	`LinqDataTypes` `p`
WHERE
	((`p`.`ID` * 7 + 1) DIV 2) * 2 = `p`.`ID` * 7 + 1
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
	CAST((`p`.`ID` * 7 + 1) DIV 2 AS CHAR(11))
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
	CAST(`p`.`ID` AS DOUBLE) / 2
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
	CAST(`p`.`ID` AS DECIMAL(29, 10)) / 2
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

