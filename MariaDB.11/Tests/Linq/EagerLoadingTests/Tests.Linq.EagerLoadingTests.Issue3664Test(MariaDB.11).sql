BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Test3664` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664Item`
(
	`Id`     INT NOT NULL,
	`TestId` INT NOT NULL,

	CONSTRAINT `PK_Test3664Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Test3664Item`
(
	`Id`,
	`TestId`
)
VALUES
(11,1),
(12,1)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

