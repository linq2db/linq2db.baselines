﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(200),
(300)

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @lastId Int32
SET     @lastId = 3

SELECT
	`t1`.`ID`,
	`t1`.`intDataType`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @lastId Int32
SET     @lastId = 3

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` >= @lastId

