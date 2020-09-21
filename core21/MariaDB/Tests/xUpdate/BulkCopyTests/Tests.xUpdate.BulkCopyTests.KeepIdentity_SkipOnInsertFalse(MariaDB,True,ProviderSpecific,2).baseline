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
-- MariaDB MySql.Official MySql (asynchronously)

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(8327,200),
(8337,300)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 8317

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
-- MariaDB MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 8317

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

