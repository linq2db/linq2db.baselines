﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PersonID`,
	`t1`.`Gender`,
	`t1`.`FirstName`,
	`t1`.`MiddleName`,
	`t1`.`LastName`
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = 1
LIMIT 1

