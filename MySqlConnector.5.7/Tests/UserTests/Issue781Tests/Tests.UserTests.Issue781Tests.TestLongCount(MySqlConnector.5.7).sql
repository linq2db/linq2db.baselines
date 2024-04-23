﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	(
		SELECT
			`t2`.`c1`
		FROM
			(
				SELECT
					Concat('test', `a_Patient`.`Diagnosis`) as `c1`
				FROM
					`Person` `t1`
						LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
			) `t2`
		GROUP BY
			`t2`.`c1`
	) `t3`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	(
		SELECT
			`t2`.`c1`
		FROM
			(
				SELECT
					Concat('test', `a_Patient`.`Diagnosis`) as `c1`
				FROM
					`Person` `t1`
						LEFT JOIN `Patient` `a_Patient` ON `t1`.`PersonID` = `a_Patient`.`PersonID`
			) `t2`
		GROUP BY
			`t2`.`c1`
	) `t3`

