﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`a_ObjectD`.`Id`,
	`a_ObjectD`.`FK`
FROM
	`EntityMA` `m_1`
		INNER JOIN `EntityMB` `d` ON `m_1`.`Id` = `d`.`FK`
		LEFT JOIN `EntityMD` `a_ObjectD` ON `d`.`FKD` = `a_ObjectD`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`e`.`Id`
FROM
	`EntityMA` `e`

