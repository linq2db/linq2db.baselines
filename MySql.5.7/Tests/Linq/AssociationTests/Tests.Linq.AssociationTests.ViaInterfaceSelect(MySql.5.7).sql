﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`
FROM
	`MainEntity` `x`

