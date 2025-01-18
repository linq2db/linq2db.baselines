﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
			EXISTS(
				SELECT
					*
				FROM
					`LineEntity` `a_Lines`
				WHERE
					`x`.`Id` = `a_Lines`.`TransactionId` AND EXISTS(
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Id`,
	`x`.`ValidOn`
FROM
	`TransactionEntity` `x`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`LineEntity` `a_Lines`
		WHERE
			`x`.`Id` = `a_Lines`.`TransactionId` AND EXISTS(
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

