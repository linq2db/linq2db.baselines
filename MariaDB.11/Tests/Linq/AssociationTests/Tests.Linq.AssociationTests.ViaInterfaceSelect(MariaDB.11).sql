BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`MainEntityId`
FROM
	`MainEntity` `m_1`
		INNER JOIN `SubEntity` `d` ON `m_1`.`Id` = `d`.`MainEntityId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`Id`
FROM
	`MainEntity` `x`

