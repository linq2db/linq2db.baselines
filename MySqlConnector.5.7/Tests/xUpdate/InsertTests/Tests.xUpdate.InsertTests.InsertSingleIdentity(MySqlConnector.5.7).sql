-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`TestIdentity`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
INSERT INTO `TestIdentity` () VALUES ()

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`TestIdentity`

