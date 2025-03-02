BeforeExecute
-- SqlServer.2017
DECLARE @filter NVarChar(4000) -- String
SET     @filter = N'%John%'
DECLARE @filter_1 NVarChar(4000) -- String
SET     @filter_1 = N'%Tester%'

SELECT
	[patient_1].[PersonID],
	[patient_1].[Diagnosis]
FROM
	[Patient] [patient_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[FirstName] LIKE @filter ESCAPE N'~' AND [p].[PersonID] = (
				SELECT TOP (1)
					[d].[PersonID]
				FROM
					[Person] [d]
				WHERE
					[d].[PersonID] = [patient_1].[PersonID]
			)
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[FirstName] LIKE @filter_1 ESCAPE N'~' AND [p_1].[PersonID] = (
				SELECT TOP (1)
					[d_1].[PersonID]
				FROM
					[Person] [d_1]
				WHERE
					[d_1].[PersonID] = [patient_1].[PersonID]
			)
	)
ORDER BY
	[patient_1].[PersonID]

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

