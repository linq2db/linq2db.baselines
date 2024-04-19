﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE   `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` >= @lastId

