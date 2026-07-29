-- MariaDB.11 MariaDB.10.MySqlConnector
-- Batch 1
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Amount`,
	`d`.`Currency`
FROM
	`TransactionEntity` `m_1`
		INNER JOIN `LineEntity` `d` ON `m_1`.`Id` = `d`.`TransactionId`

-- Batch 2
SELECT
	`x`.`Id`,
	`x`.`ValidOn`
FROM
	`TransactionEntity` `x`
ORDER BY
	`x`.`ValidOn`
