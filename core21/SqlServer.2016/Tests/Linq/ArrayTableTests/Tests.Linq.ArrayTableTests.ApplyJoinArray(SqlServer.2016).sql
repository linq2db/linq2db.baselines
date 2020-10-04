BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe'

SELECT
	[t1].[FirstName]
FROM
	[Person] [p]
		CROSS APPLY (
			SELECT
				[p].[FirstName]
			UNION ALL
			SELECT
				[p].[LastName] as [FirstName]
			UNION ALL
			SELECT
				N'John' as [FirstName]
			UNION ALL
			SELECT
				@doe as [FirstName]
		) [t1]

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
-- SqlServer.2016 SqlServer.2012
DECLARE @doe NVarChar(4000) -- String
SET     @doe = N'Doe1'

SELECT
	[t1].[FirstName]
FROM
	[Person] [p]
		CROSS APPLY (
			SELECT
				[p].[FirstName]
			UNION ALL
			SELECT
				[p].[LastName] as [FirstName]
			UNION ALL
			SELECT
				N'John' as [FirstName]
			UNION ALL
			SELECT
				@doe as [FirstName]
		) [t1]

