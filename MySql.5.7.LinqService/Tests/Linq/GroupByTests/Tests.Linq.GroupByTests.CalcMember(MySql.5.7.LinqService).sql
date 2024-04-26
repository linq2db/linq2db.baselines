﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`groupedData_1`.`Value_1`,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN `child`.`FirstName` = 'John' THEN `child`.`FirstName`
				ELSE 'a'
			END as `Value_1`
		FROM
			`Parent` `groupedData`,
			`Person` `child`
		WHERE
			`child`.`PersonID` = `groupedData`.`ParentID`
	) `groupedData_1`
GROUP BY
	`groupedData_1`.`Value_1`

