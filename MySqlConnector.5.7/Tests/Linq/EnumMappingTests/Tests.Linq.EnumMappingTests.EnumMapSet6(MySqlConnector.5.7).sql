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
	`IntValue`
)
VALUES
(
	101,
	3
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`LinqDataTypes` `r`
SET
	`r`.`IntValue` = 4
WHERE
	`r`.`ID` = 101 AND `r`.`IntValue` = 3

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101 AND `r`.`IntValue` = 4

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @p

