BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Entry`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Entry`
(
	`Id`     CHAR(36)      NOT NULL,
	`RecSrc` VARCHAR(4000)     NULL,
	`Value`  INT           NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`e`.`Id`,
	`e`.`RecSrc`,
	`e`.`Value`
FROM
	`Entry` `e`
WHERE
	(`e`.`RecSrc`, `e`.`Value`) = ('default', 2007)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Entry`

