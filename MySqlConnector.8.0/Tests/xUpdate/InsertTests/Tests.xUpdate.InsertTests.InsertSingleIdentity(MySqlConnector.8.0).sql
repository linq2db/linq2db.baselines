-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`TestIdentity`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector
-- Batch 1
INSERT INTO `TestIdentity` () VALUES ()

-- Batch 2
SELECT
	LAST_INSERT_ID() as `c1`
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`TestIdentity`

