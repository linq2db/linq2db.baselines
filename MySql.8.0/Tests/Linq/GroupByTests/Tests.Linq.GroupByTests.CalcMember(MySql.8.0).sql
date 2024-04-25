﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

