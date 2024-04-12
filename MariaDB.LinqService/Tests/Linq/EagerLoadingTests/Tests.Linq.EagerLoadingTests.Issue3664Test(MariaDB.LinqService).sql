﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Test3664` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Test3664`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664Item`
(
	`Id`     INT NOT NULL,
	`TestId` INT NOT NULL,

	CONSTRAINT `PK_Test3664Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 11
DECLARE @TestId Int32
SET     @TestId = 1

INSERT INTO `Test3664Item`
(
	`Id`,
	`TestId`
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 12
DECLARE @TestId Int32
SET     @TestId = 1

INSERT INTO `Test3664Item`
(
	`Id`,
	`TestId`
)
VALUES
(
	@Id,
	@TestId
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 11

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 12

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

