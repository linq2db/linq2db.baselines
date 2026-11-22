-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(CAST(~CAST(`p`.`ID` | -5 AS SIGNED) AS SIGNED) & 7 AS SIGNED)
FROM
	`LinqDataTypes` `p`
ORDER BY
	`p`.`ID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

