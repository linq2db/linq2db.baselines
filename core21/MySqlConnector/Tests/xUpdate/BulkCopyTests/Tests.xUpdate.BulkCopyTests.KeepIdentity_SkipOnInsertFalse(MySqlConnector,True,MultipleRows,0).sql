BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT LAST_INSERT_ID()

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(4220,200),
(4230,300)

BeforeExecute
-- MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 4210

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
-- MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 4210

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` >= @lastId

