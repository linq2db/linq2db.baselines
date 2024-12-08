BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithIdentitySrc`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableWithIdentitySrc`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TableWithIdentitySrc` PRIMARY KEY CLUSTERED (`Id`)
)

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

INSERT INTO `TableWithIdentitySrc`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `TableWithIdentity`
(
	`Value`
)
SELECT
	`t1`.`Value` + 123
FROM
	`TableWithIdentitySrc` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithIdentity`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithIdentitySrc`

