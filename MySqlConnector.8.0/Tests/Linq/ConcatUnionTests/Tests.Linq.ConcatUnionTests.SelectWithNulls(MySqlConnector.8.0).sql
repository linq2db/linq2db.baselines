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
UNION ALL
SELECT
	CAST(NULL AS SIGNED),
	CAST(NULL AS DECIMAL(29, 10)),
	CAST(NULL AS DATETIME),
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(36)),
	CAST(NULL AS BINARY(255)),
	CAST(NULL AS SIGNED),
	CAST(NULL AS CHAR(255))
FROM
	`LinqDataTypes` `d`

