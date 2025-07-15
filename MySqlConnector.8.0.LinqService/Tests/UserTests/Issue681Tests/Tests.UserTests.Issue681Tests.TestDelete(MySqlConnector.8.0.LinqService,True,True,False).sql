BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`testdataconnector`.`Issue681Table`
WHERE
	`testdataconnector`.`Issue681Table`.`ID` = @ID

