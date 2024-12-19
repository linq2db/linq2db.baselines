BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3360Table`
(
	`Id`  INT          NOT NULL,
	`Str` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3360Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`Id`,
	CAST('str1' AS CHAR(255))
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str2' AS CHAR(255))
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`Id`,
	CAST('str2' AS CHAR(255))
FROM
	`Issue3360Table` `p`
UNION ALL
SELECT
	`p_1`.`Id`,
	CAST('str1' AS CHAR(255))
FROM
	`Issue3360Table` `p_1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3360Table`

