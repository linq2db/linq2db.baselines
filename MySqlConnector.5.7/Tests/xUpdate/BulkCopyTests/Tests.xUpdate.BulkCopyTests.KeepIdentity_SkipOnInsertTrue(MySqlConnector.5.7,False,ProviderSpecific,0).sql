BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value Int32
SET     @Value = 0

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT LAST_INSERT_ID()

BeforeExecute
INSERT BULK `AllTypes`(intDataType

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @lastId Int32
SET     @lastId = 3

SELECT
	`_`.`ID`,
	`_`.`intDataType`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` > @lastId
ORDER BY
	`_`.`ID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @lastId Int32
SET     @lastId = 3

DELETE   `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` >= @lastId

