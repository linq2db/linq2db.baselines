BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3799Item`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Test3799Item`
(
	`Id`       INT           NOT NULL,
	`ParentId` INT               NULL,
	`Name`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Test3799Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`Children`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			`t1`.`Children`
		FROM
			`Test3799Item` `item_1`
				LEFT JOIN (
					SELECT
						`a_Children`.`Id` as `Children`,
						ROW_NUMBER() OVER (PARTITION BY `a_Children`.`ParentId` ORDER BY `a_Children`.`ParentId`) as `rn`,
						`a_Children`.`ParentId`
					FROM
						`Test3799Item` `a_Children`
				) `t1` ON `item_1`.`Id` = `t1`.`ParentId` AND `t1`.`ParentId` IS NOT NULL AND `t1`.`rn` <= 1
	) `m_1`
		INNER JOIN `Test3799Item` `d` ON `m_1`.`Children` = `d`.`ParentId` AND `m_1`.`Children` IS NOT NULL AND `d`.`ParentId` IS NOT NULL OR `m_1`.`Children` IS NULL AND `d`.`ParentId` IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`item_1`.`Name`,
	`t1`.`Name`,
	`t1`.`Children`
FROM
	`Test3799Item` `item_1`
		LEFT JOIN (
			SELECT
				`a_Children`.`Name`,
				`a_Children`.`Id` as `Children`,
				ROW_NUMBER() OVER (PARTITION BY `a_Children`.`ParentId` ORDER BY `a_Children`.`ParentId`) as `rn`,
				`a_Children`.`ParentId`
			FROM
				`Test3799Item` `a_Children`
		) `t1` ON `item_1`.`Id` = `t1`.`ParentId` AND `t1`.`ParentId` IS NOT NULL AND `t1`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Test3799Item`

