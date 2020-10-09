BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`_`.`FirstName`, 
	`_`.`PersonID`, 
	`_`.`LastName`, 
	`_`.`MiddleName`, 
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND `_`.`Gender` = 'M'

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`_`.`FirstName`, 
	`_`.`PersonID`, 
	`_`.`LastName`, 
	`_`.`MiddleName`, 
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND 'M' = `_`.`Gender`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @gender_1 String -- StringFixedLength
SET     @gender_1 = 'M'

SELECT 
	`_`.`FirstName`, 
	`_`.`PersonID`, 
	`_`.`LastName`, 
	`_`.`MiddleName`, 
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND `_`.`Gender` = @gender_1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @gender_1 String -- StringFixedLength
SET     @gender_1 = 'M'

SELECT 
	`_`.`FirstName`, 
	`_`.`PersonID`, 
	`_`.`LastName`, 
	`_`.`MiddleName`, 
	`_`.`Gender`
FROM
	`Person` `_`
WHERE
	`_`.`PersonID` = 1 AND @gender_1 = `_`.`Gender`

