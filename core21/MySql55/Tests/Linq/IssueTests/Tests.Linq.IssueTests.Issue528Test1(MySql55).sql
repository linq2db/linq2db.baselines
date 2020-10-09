BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`t1`.`FirstName`
FROM
	`Person` `t1`
GROUP BY
	`t1`.`FirstName`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'Jane'

SELECT 
	`keyParam`.`FirstName`, 
	`keyParam`.`PersonID`, 
	`keyParam`.`LastName`, 
	`keyParam`.`MiddleName`, 
	`keyParam`.`Gender`
FROM
	`Person` `keyParam`
WHERE
	`keyParam`.`FirstName` = @FirstName_1

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'John'

SELECT 
	`keyParam`.`FirstName`, 
	`keyParam`.`PersonID`, 
	`keyParam`.`LastName`, 
	`keyParam`.`MiddleName`, 
	`keyParam`.`Gender`
FROM
	`Person` `keyParam`
WHERE
	`keyParam`.`FirstName` = @FirstName_1

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = 'Jürgen'

SELECT 
	`keyParam`.`FirstName`, 
	`keyParam`.`PersonID`, 
	`keyParam`.`LastName`, 
	`keyParam`.`MiddleName`, 
	`keyParam`.`Gender`
FROM
	`Person` `keyParam`
WHERE
	`keyParam`.`FirstName` = @FirstName_1

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = 'Tester'

SELECT 
	`keyParam`.`FirstName`, 
	`keyParam`.`PersonID`, 
	`keyParam`.`LastName`, 
	`keyParam`.`MiddleName`, 
	`keyParam`.`Gender`
FROM
	`Person` `keyParam`
WHERE
	`keyParam`.`FirstName` = @FirstName_1

