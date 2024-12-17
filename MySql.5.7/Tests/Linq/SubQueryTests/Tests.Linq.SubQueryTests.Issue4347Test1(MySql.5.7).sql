BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TransactionEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TransactionEntity`
(
	`Id`      CHAR(36) NOT NULL,
	`ValidOn` DATETIME NOT NULL,

	CONSTRAINT `PK_TransactionEntity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
					*
				FROM
					`LineEntity` `a_Lines`
				WHERE
					`x`.`Id` = `a_Lines`.`TransactionId` AND  EXISTS (
						SELECT
							*
						FROM
							(
								SELECT 'A' AS `item`
								UNION ALL
								SELECT 'B') `t1`
						WHERE
							`a_Lines`.`Currency` = `t1`.`item` OR `a_Lines`.`Currency` IS NULL AND `t1`.`item` IS NULL
					)
			)
	) `m_1`
		INNER JOIN `LineEntity` `d` ON `m_1`.`Id` = `d`.`TransactionId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`ValidOn`
FROM
	`TransactionEntity` `x`
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			`LineEntity` `a_Lines`
		WHERE
			`x`.`Id` = `a_Lines`.`TransactionId` AND  EXISTS (
				SELECT
					*
				FROM
					(
						SELECT 'A' AS `item`
						UNION ALL
						SELECT 'B') `t1`
				WHERE
					`a_Lines`.`Currency` = `t1`.`item` OR `a_Lines`.`Currency` IS NULL AND `t1`.`item` IS NULL
			)
	)
ORDER BY
	`x`.`ValidOn`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `LineEntity`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TransactionEntity`

