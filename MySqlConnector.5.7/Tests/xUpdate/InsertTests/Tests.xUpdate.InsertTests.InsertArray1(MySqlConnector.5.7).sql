-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BoolValue`,
	`BinaryValue`
)
VALUES
(
	1001,
	1,
	NULL
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1001
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` > 1000

