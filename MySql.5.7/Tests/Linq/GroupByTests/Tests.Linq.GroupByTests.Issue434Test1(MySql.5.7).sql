﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @input VarChar(4) -- String
SET     @input = 'test'

SELECT
	`m_1`.`PersonID`,
	`d`.`PersonID`,
	`d`.`Diagnosis`
FROM
	`Person` `m_1`
		INNER JOIN `Patient` `d` ON `m_1`.`PersonID` = `d`.`PersonID`
WHERE
	LOCATE(@input, Lower(`m_1`.`FirstName`)) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @input VarChar(4) -- String
SET     @input = 'test'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE(@input, Lower(`p`.`FirstName`)) > 0

