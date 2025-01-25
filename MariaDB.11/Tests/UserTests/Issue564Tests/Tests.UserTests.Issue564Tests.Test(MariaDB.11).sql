BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Parent564`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Parent564`
(
	`Id`          INT           AUTO_INCREMENT NOT NULL,
	`Type`        VARCHAR(4000)                    NULL,
	`StringValue` VARCHAR(20)                      NULL,
	`IntValue`    INT                              NULL,

	CONSTRAINT `PK_Parent564` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO `Parent564`
(
	`Type`,
	`StringValue`
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO `Parent564`
(
	`Type`,
	`IntValue`
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Parent564` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Parent564`

