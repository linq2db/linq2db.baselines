﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`p`.`FirstName`, 
	`p`.`PersonID`, 
	`p`.`LastName`, 
	`p`.`MiddleName`, 
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Substring(`p`.`FirstName`, 2, 2) = 'oh' AND `p`.`PersonID` = 1

