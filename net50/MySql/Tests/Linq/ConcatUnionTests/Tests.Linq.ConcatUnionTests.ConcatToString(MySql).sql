﻿BeforeExecute
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
-- MySql MySql.Official MySql
DECLARE @pattern VarChar(1) -- String
SET     @pattern = '1'

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` LIKE '1'
UNION ALL
SELECT
	`p_1`.`FirstName`
FROM
	`Person` `p_1`
WHERE
	LOCATE(@pattern, Cast(`p_1`.`PersonID` as CHAR(11))) > 0

