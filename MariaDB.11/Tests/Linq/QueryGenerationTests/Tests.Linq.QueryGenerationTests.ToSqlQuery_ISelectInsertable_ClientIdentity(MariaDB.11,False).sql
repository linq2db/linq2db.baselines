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
DECLARE @addition Int32
SET     @addition = 123

INSERT INTO `TableWithIdentity`
(
	`Id`,
	`Value`
)
SELECT
	345,
	`t1`.`Value` + @addition
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

