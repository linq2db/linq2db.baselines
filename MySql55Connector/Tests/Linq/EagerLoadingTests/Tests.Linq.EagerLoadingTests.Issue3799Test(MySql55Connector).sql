BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Test3799Item`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3799Item`
(
	`Id`       INT           NOT NULL,
	`ParentId` INT               NULL,
	`Name`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Test3799Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `Test3799Item`
(
	`Id`,
	`ParentId`,
	`Name`
)
VALUES
(1,NULL,'root'),
(2,1,'child 1'),
(3,2,'child 1.1'),
(4,2,'child 1.2'),
(5,1,'child 2'),
(6,5,'child 2.1'),
(7,5,'child 2.1')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`key_data_result`.`Id`,
	`key_data_result`.`Id_1`,
	`detail_1`.`Name`
FROM
	(
		SELECT DISTINCT
			`detail`.`Id`,
			`item_1`.`Id` as `Id_1`
		FROM
			`Test3799Item` `item_1`
				INNER JOIN `Test3799Item` `detail` ON `item_1`.`Id` = `detail`.`ParentId`
	) `key_data_result`
		INNER JOIN `Test3799Item` `detail_1` ON `key_data_result`.`Id` = `detail_1`.`ParentId`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`item_1`.`Id`,
	`detail`.`Name`,
	`detail`.`Id`
FROM
	`Test3799Item` `item_1`
		INNER JOIN `Test3799Item` `detail` ON `item_1`.`Id` = `detail`.`ParentId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`item_1`.`Name`,
	`item_1`.`Id`
FROM
	`Test3799Item` `item_1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Test3799Item`

