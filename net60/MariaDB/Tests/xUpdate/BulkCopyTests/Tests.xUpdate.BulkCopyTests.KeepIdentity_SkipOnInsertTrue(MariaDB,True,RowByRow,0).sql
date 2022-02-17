﻿BeforeExecute
-- MariaDB MySqlConnector MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value_1 Int32
SET     @Value_1 = 0

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(
	@Value_1
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

