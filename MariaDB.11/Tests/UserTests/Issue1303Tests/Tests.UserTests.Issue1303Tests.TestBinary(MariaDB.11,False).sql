BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1303`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue1303`
(
	`ID`     INT           NOT NULL,
	`Array`  VARBINARY(10)     NULL,
	`Binary` VARBINARY(10)     NULL,

	CONSTRAINT `PK_Issue1303` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Array Blob(3) -- Binary
SET     @Array = 0x010203
DECLARE @Binary Blob(2) -- Binary
SET     @Binary = 0x0405

INSERT INTO `Issue1303`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`ID` = 1
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Array Blob(3) -- Binary
SET     @Array = 0x010203

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Array` = @Array
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Binary Blob(2) -- Binary
SET     @Binary = 0x0405

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Binary` = @Binary
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1303`

