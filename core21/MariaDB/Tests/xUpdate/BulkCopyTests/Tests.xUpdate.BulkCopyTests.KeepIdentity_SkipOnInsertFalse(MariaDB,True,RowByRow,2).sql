﻿BeforeExecute
-- MariaDB MySql.Official MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

