BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Test3664` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3664Item`
(
	`Id`     INT NOT NULL,
	`TestId` INT NOT NULL,

	CONSTRAINT `PK_Test3664Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 11

SELECT
	`lw_Test3664`.`Id`,
	`a`.`Id`,
	`a`.`TestId`
FROM
	`Test3664` `lw_Test3664`
		INNER JOIN `Test3664Item` `a` ON `lw_Test3664`.`Id` = `a`.`TestId` AND `a`.`Id` = @id

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 12

SELECT
	`lw_Test3664`.`Id`,
	`a`.`Id`,
	`a`.`TestId`
FROM
	`Test3664` `lw_Test3664`
		INNER JOIN `Test3664Item` `a` ON `lw_Test3664`.`Id` = `a`.`TestId` AND `a`.`Id` = @id

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Test3664`

