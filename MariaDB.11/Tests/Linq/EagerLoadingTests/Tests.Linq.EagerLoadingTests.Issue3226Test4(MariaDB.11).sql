BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Id`,
	`d`.`Value`
FROM
	`Item` `m_1`
		INNER JOIN `ItemValue` `d` ON `m_1`.`Id` = `d`.`ItemId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`,
	`x`.`Text`
FROM
	`Item` `x`
ORDER BY
	Coalesce((
		SELECT
			SUM(`a_Values`.`Value`)
		FROM
			`ItemValue` `a_Values`
		WHERE
			`x`.`Id` = `a_Values`.`ItemId`
	), 0)

