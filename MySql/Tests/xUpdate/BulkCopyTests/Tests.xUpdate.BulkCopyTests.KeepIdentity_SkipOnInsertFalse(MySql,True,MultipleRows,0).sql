﻿BeforeExecute
-- MySql MySql.Official MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(13,200),
(23,300)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE   `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` >= @lastId

