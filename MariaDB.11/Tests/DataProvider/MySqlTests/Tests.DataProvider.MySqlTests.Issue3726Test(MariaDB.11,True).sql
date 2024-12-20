BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3726Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3726Table`
(
	`Id`     INT           NOT NULL,
	`Value`  INT UNSIGNED  NOT NULL,
	`Value2` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue3726Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value UInt32
SET     @Value = 123
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL

INSERT INTO `Issue3726Table`
(
	`Id`,
	`Value`,
	`Value2`
)
VALUES
(
	@Id,
	@Value,
	@Value2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

UPDATE
	`Issue3726Table` `f`
SET
	`f`.`Value2` = 'Baz'
WHERE
	CAST(`f`.`Value` AS SIGNED) = 123

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3726Table`

