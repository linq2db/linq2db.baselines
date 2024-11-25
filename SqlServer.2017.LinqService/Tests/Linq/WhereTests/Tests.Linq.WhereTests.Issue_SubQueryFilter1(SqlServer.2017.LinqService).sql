BeforeExecute
-- SqlServer.2017
DECLARE @filter1 NVarChar(4000) -- String
SET     @filter1 = N'%John%'
DECLARE @filter2 NVarChar(4000) -- String
SET     @filter2 = N'%Tester%'

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Person] [e],
			(
				SELECT TOP (1)
					[d].[PersonID]
				FROM
					[Patient] [d]
			) [t2]
		WHERE
			[e].[FirstName] LIKE @filter1 ESCAPE N'~' AND [e].[PersonID] = [t2].[PersonID]
	) OR
	EXISTS(
		SELECT
			1
		FROM
			[Person] [e_1],
			(
				SELECT TOP (1)
					[d_1].[PersonID]
				FROM
					[Patient] [d_1]
			) [t3]
		WHERE
			[e_1].[FirstName] LIKE @filter2 ESCAPE N'~' AND [e_1].[PersonID] = [t3].[PersonID]
	)
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

