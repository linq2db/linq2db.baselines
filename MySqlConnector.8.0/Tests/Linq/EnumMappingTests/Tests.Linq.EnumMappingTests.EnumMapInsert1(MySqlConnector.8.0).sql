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
	`ID`,
	`BigIntValue`
)
VALUES
(
	101,
	12
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101 AND `r`.`BigIntValue` = 12

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 102

DELETE  
FROM
	`LinqDataTypes`
WHERE
	`LinqDataTypes`.`ID` >= 101 AND `LinqDataTypes`.`ID` < @Id

