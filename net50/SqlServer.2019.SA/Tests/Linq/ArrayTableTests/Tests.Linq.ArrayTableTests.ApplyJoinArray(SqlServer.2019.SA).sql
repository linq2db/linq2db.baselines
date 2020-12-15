BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
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
-- SqlServer.2019.SA SqlServer.2017
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

