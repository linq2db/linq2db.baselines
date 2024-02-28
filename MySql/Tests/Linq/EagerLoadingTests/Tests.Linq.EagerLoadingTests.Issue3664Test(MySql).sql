BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Test3664`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Test3664`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Test3664` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Test3664Item`
(
	`Id`     INT NOT NULL,
	`TestId` INT NOT NULL,

	CONSTRAINT `PK_Test3664Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
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
DisposeTransaction
BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql MySql.Official MySql
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
DisposeTransaction
BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Test3664Item`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Test3664`

