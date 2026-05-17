-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

INSERT ASYNC BULK `KeepIdentityTest`(ID, Value)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @lastId Int32
SET     @lastId = 190

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`KeepIdentityTest` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @lastId Int32
SET     @lastId = 190

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

