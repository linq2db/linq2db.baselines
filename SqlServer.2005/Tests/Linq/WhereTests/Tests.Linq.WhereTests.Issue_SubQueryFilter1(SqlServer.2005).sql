BeforeExecute
-- SqlServer.2005
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
			*
		FROM
			[Person] [e]
		WHERE
			[e].[FirstName] LIKE @filter1 ESCAPE N'~' AND [e].[PersonID] = (
				SELECT TOP (1)
					[d].[PersonID]
				FROM
					[Patient] [d]
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[Person] [e_1]
		WHERE
			[e_1].[FirstName] LIKE @filter2 ESCAPE N'~' AND [e_1].[PersonID] = (
				SELECT TOP (1)
					[d_1].[PersonID]
				FROM
					[Patient] [d_1]
			)
	)
ORDER BY
	[t1].[PersonID]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

