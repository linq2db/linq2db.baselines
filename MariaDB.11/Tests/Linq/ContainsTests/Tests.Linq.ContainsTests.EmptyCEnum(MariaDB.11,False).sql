BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`    INT         NOT NULL,
	`Int`   INT             NULL,
	`Enum`  VARCHAR(5)      NULL,
	`CEnum` VARCHAR(20)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Src`
(
	`Id`,
	`Int`,
	`Enum`,
	`CEnum`
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	1 = 0

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Src` `s`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Src` `s`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

