BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Names`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Names`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Addresses`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Addresses`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO `Addresses`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`tupledArg`.`Id`,
	`tupledArg`.`Name`,
	`arg2`.`Id`,
	`arg2`.`Text`
FROM
	`Names` `tupledArg`
		LEFT JOIN `Addresses` `arg2` ON `tupledArg`.`Id` = `arg2`.`Id`
ORDER BY
	`tupledArg`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Addresses`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Names`

