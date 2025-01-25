BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Test3664`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Test3664`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Test3664` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Test3664Item`
(
	`Id`     INT NOT NULL,
	`TestId` INT NOT NULL,

	CONSTRAINT `PK_Test3664Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Test3664`

