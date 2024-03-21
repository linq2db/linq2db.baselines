BeforeExecute
-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN [p].[FirstName] IS NULL THEN NULL
		WHEN [p].[FirstName] LIKE N'Jo%' ESCAPE N'~' THEN 1
		ELSE 0
	END = 1

