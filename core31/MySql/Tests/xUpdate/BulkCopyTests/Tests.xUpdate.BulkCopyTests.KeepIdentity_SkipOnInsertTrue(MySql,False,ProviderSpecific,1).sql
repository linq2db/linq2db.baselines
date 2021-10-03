﻿BeforeExecute
-- MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MySql
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
-- MySql

SELECT LAST_INSERT_ID()

BeforeExecute
INSERT ASYNC BULK `AllTypes`(intDataType

BeforeExecute
-- MySql
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
-- MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

