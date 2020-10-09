BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @FirstName_1 VarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	`r`.`FirstName`, 
	`r`.`PersonID`, 
	`r`.`LastName`, 
	`r`.`MiddleName`, 
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @FirstName_1

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`r`.`FirstName`, 
	`r`.`PersonID`, 
	`r`.`LastName`, 
	`r`.`MiddleName`, 
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` IS NULL

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @FirstName_1 VarChar(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	`r`.`FirstName`, 
	`r`.`PersonID`, 
	`r`.`LastName`, 
	`r`.`MiddleName`, 
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @FirstName_1

