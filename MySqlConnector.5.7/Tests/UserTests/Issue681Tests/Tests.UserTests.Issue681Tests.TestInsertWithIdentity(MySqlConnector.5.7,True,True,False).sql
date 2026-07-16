-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- Value = 10
INSERT INTO `testdataconnector`.`Issue681Table4`
(
	`Value`
)
VALUES
(
	@Value
)

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
