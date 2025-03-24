﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
BeginTransaction
BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
DisposeTransaction
