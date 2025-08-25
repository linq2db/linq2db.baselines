BeforeExecute
-- SqlCe (asynchronously)
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%John%'
DECLARE @filter_1 NVarChar(8) -- String
SET     @filter_1 = '%Tester%'

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
				CROSS APPLY (
					SELECT TOP (1)
						[d].[PersonID] as [cond]
					FROM
						[Person] [d]
					WHERE
						[d].[PersonID] = [patient_1].[PersonID]
				) [t1]
		WHERE
			[p].[FirstName] LIKE @filter ESCAPE '~' AND [p].[PersonID] = [t1].[cond]
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
				CROSS APPLY (
					SELECT TOP (1)
						[d_1].[PersonID] as [cond]
					FROM
						[Person] [d_1]
					WHERE
						[d_1].[PersonID] = [patient_1].[PersonID]
				) [t2]
		WHERE
			[p_1].[FirstName] LIKE @filter_1 ESCAPE '~' AND [p_1].[PersonID] = [t2].[cond]
	)
ORDER BY
	[patient_1].[PersonID]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

