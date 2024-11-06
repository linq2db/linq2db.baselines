﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @filter1 VarChar(4) -- String
SET     @filter1 = 'John'
DECLARE @filter2 VarChar(6) -- String
SET     @filter2 = 'Tester'

SELECT
	`p`.`PersonID`,
	`p`.`Diagnosis`
FROM
	`Patient` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Person` `e`,
			(
				SELECT
					`d`.`PersonID`
				FROM
					`Patient` `d`
				LIMIT 1
			) `t1`
		WHERE
			`e`.`PersonID` = `p`.`PersonID` AND LOCATE(@filter1, `e`.`FirstName`) > 0 AND
			`e`.`PersonID` = `t1`.`PersonID`
	) OR
	EXISTS(
		SELECT
			*
		FROM
			`Person` `e_1`,
			(
				SELECT
					`d_1`.`PersonID`
				FROM
					`Patient` `d_1`
				LIMIT 1
			) `t2`
		WHERE
			`e_1`.`PersonID` = `p`.`PersonID` AND LOCATE(@filter2, `e_1`.`FirstName`) > 0 AND
			`e_1`.`PersonID` = `t2`.`PersonID`
	)
ORDER BY
	`p`.`PersonID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

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

