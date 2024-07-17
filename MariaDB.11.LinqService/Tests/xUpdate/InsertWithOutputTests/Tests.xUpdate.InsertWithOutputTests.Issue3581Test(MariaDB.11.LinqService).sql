BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3581Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3581Table`
(
	`Id`         INT           NOT NULL,
	`Name`       VARCHAR(4000)     NULL,
	`ExternalId` VARCHAR(4000)     NULL,
	`Source`     VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue3581Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'John Doe'
DECLARE @Id_1 VarChar(1) -- String
SET     @Id_1 = '1'
DECLARE @Source VarChar(7) -- String
SET     @Source = 'unknown'

INSERT INTO `Issue3581Table`
(
	`Id`,
	`Name`,
	`ExternalId`,
	`Source`
)
VALUES
(
	@Id,
	@Name,
	@Id_1,
	@Source
)
RETURNING
	`Issue3581Table`.`Id`,
	`Issue3581Table`.`Name`,
	`Issue3581Table`.`ExternalId`,
	`Issue3581Table`.`Source`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3581Table`

