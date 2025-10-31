BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Amount`,
	`d`.`Currency`
FROM
	`TransactionEntity` `m_1`
		INNER JOIN `LineEntity` `d` ON `m_1`.`Id` = `d`.`TransactionId`
WHERE
	EXISTS(
		SELECT
			`a_Lines`.`Currency`
		FROM
			`LineEntity` `a_Lines`
		WHERE
			`m_1`.`Id` = `a_Lines`.`TransactionId`
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
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`,
	`x`.`ValidOn`
FROM
	`TransactionEntity` `x`
WHERE
	EXISTS(
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
ORDER BY
	`x`.`ValidOn`

