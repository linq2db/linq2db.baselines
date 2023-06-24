BeforeExecute
-- SqlCe

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	LEN(REPLACE([nm].[FirstName],' ','.')) <> 0

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

