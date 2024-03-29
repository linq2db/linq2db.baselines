﻿BeforeExecute
-- MySql55 MySql.Official MySql

ALTER TABLE `AllTypes` AUTO_INCREMENT = 3

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @Value Int32
SET     @Value = 200

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @Value Int32
SET     @Value = 300

INSERT INTO `AllTypes`
(
	`intDataType`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE   `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

