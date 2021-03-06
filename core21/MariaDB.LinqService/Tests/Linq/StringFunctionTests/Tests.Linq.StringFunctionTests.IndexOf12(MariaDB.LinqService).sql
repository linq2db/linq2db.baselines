﻿BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 UByte -- Boolean
SET     @p1 = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN @p1 = 1 THEN 0
		ELSE Locate('', `p`.`FirstName`) - 1
	END = 0 AND
	`p`.`PersonID` = 1

