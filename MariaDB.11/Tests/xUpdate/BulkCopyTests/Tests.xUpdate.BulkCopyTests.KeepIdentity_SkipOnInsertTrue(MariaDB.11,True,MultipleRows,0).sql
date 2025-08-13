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

INSERT INTO `AllTypes`
(
	`ID`,
	`intDataType`
)
VALUES
(13,200),
(23,300)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 3

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` >= @lastId

