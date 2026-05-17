-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 200

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 300

INSERT INTO `KeepIdentityTest`
(
	`Value`
)
VALUES
(
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @lastId Int32
SET     @lastId = 244

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`KeepIdentityTest` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @lastId Int32
SET     @lastId = 244

DELETE  
FROM
	`KeepIdentityTest`
WHERE
	`KeepIdentityTest`.`ID` >= @lastId

