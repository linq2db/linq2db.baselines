-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()

