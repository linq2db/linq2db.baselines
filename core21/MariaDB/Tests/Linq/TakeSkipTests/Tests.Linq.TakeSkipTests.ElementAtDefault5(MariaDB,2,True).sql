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
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t1`.`FirstName`, 
	`t1`.`PersonID`, 
	`t1`.`LastName`, 
	`t1`.`MiddleName`, 
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`LastName`
LIMIT @skip,@take

