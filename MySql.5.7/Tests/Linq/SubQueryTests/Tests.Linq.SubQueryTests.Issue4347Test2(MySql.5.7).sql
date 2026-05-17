-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
			*
		FROM
			`LineEntity` `a_Lines`
		WHERE
			`m_1`.`Id` = `a_Lines`.`TransactionId` AND EXISTS(
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

