BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Test3799Item`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Test3799Item`
(
	`Id`       INT           NOT NULL,
	`ParentId` INT               NULL,
	`Name`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Test3799Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					`a_Children`.`Id`
				FROM
					`Test3799Item` `a_Children`
				WHERE
					`item_1`.`Id` = `a_Children`.`ParentId`
				LIMIT 1
			) as `Id`
		FROM
			`Test3799Item` `item_1`
	) `m_1`
		INNER JOIN `Test3799Item` `d` ON (`m_1`.`Id` = `d`.`ParentId` OR `m_1`.`Id` IS NULL AND `d`.`ParentId` IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`item_1`.`Name`,
	(
		SELECT
			`a_Children`.`Name`
		FROM
			`Test3799Item` `a_Children`
		WHERE
			`item_1`.`Id` = `a_Children`.`ParentId`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`Id`
		FROM
			`Test3799Item` `a_Children_1`
		WHERE
			`item_1`.`Id` = `a_Children_1`.`ParentId`
		LIMIT 1
	)
FROM
	`Test3799Item` `item_1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Test3799Item`

