-- MySqlConnector.8.0 MySql.8.0.MySqlConnector
-- Batch 1
-- Value = 0
INSERT INTO `KeepIdentityTest`
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @lastId Int32
SET     @lastId = 105

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

