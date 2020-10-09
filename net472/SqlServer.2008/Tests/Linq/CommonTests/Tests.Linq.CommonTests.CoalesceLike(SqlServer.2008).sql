BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2008

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
		WHEN CASE
			WHEN [p].[FirstName] IS NULL
				THEN NULL
			ELSE CASE
				WHEN [p].[FirstName] LIKE N'Jo%'
					THEN 1
				ELSE 0
			END
		END IS NULL
			THEN 0
		WHEN [p].[FirstName] IS NULL
			THEN NULL
		ELSE CASE
			WHEN [p].[FirstName] LIKE N'Jo%'
				THEN 1
			ELSE 0
		END
	END = 1

