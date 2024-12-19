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

INSERT INTO `Issue1303`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	0x010203,
	0x0405
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

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Array` = 0x010203
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`Issue1303` `t1`
WHERE
	`t1`.`Binary` = 0x0405
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1303`

