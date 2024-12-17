BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TransactionEntity`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `TransactionEntity`
(
	`Id`      CHAR(36) NOT NULL,
	`ValidOn` DATETIME NOT NULL,

	CONSTRAINT `PK_TransactionEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `LineEntity`
(
	`Id`            CHAR(36)        NOT NULL,
	`TransactionId` CHAR(36)        NOT NULL,
	`Amount`        DECIMAL(29, 10) NOT NULL,
	`Currency`      VARCHAR(4000)       NULL,

	CONSTRAINT `PK_LineEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Amount`,
	`d`.`Currency`
FROM
	(
		SELECT DISTINCT
			`x`.`Id`
		FROM
			`TransactionEntity` `x`
		WHERE
			 EXISTS (
				SELECT
					`a_Lines`.`Currency`
				FROM
					`LineEntity` `a_Lines`
				WHERE
					`x`.`Id` = `a_Lines`.`TransactionId`
				INTERSECT
				SELECT
					`t1`.`item`
				FROM
					(
						SELECT 'A' AS `item`
						UNION ALL
						SELECT 'B') `t1`
			)
	) `m_1`
		INNER JOIN `LineEntity` `d` ON `m_1`.`Id` = `d`.`TransactionId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`ValidOn`
FROM
	`TransactionEntity` `x`
WHERE
	 EXISTS (
		SELECT
			`a_Lines`.`Currency`
		FROM
			`LineEntity` `a_Lines`
		WHERE
			`x`.`Id` = `a_Lines`.`TransactionId`
		INTERSECT
		SELECT
			`t1`.`item`
		FROM
			(
				SELECT 'A' AS `item`
				UNION ALL
				SELECT 'B') `t1`
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TransactionEntity`

