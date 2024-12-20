BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithIdentity`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableWithIdentity`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TableWithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentity`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

UPDATE
	`TableWithIdentity` `t1`
SET
	`t1`.`Value` = 123

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithIdentity`

