BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(8591,200),
(8601,300)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 8581

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
SET     @lastId = 8581

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

