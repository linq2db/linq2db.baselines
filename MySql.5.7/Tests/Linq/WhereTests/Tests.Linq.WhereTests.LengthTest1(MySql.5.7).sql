﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`nm`.`MiddleName`
FROM
	`Person` `nm`
WHERE
	(Char_Length(`nm`.`MiddleName`) <> 0 OR Char_Length(`nm`.`MiddleName`) IS NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

