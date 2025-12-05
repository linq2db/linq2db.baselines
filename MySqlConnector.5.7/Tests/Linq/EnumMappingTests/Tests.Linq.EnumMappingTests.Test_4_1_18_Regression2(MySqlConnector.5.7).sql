-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`,
	`IntValue`
)
VALUES
(
	101,
	4,
	10
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`BigIntValue` IS NOT NULL AND `t1`.`IntValue` IS NOT NULL,
	`t1`.`BigIntValue`,
	`t1`.`IntValue`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = 101

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

