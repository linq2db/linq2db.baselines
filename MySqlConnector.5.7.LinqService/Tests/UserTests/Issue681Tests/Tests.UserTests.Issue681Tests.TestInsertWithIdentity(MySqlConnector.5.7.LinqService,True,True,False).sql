BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO `testdataconnector`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

