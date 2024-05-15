BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `LinqDataTypes`
(
	`ID`
)
VALUES
(
	101
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`BigIntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101
LIMIT 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

