﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`nm`.`MiddleName`
FROM
	(
		SELECT
			Char_Length(`p`.`MiddleName`) as `Value_1`,
			`p`.`MiddleName`
		FROM
			`Person` `p`
	) `nm`
WHERE
	`nm`.`Value_1` <> 0 OR `nm`.`Value_1` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

