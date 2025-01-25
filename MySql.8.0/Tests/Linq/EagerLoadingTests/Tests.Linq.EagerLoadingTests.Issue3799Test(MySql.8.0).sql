BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Test3799Item`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Test3799Item`
(
	`Id`       INT           NOT NULL,
	`ParentId` INT               NULL,
	`Name`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Test3799Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			`t1`.`Id`
		FROM
			`Test3799Item` `item_1`
				LEFT JOIN LATERAL (
					SELECT
						`a_Children`.`Id`
					FROM
						`Test3799Item` `a_Children`
					WHERE
						`item_1`.`Id` = `a_Children`.`ParentId`
					LIMIT 1
				) `t1` ON 1=1
	) `m_1`
		INNER JOIN `Test3799Item` `d` ON (`m_1`.`Id` = `d`.`ParentId` OR `m_1`.`Id` IS NULL AND `d`.`ParentId` IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`item_1`.`Name`,
	`t1`.`Name`,
	`t1`.`Id`
FROM
	`Test3799Item` `item_1`
		LEFT JOIN LATERAL (
			SELECT
				`a_Children`.`Name`,
				`a_Children`.`Id`
			FROM
				`Test3799Item` `a_Children`
			WHERE
				`item_1`.`Id` = `a_Children`.`ParentId`
			LIMIT 1
		) `t1` ON 1=1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Test3799Item`

