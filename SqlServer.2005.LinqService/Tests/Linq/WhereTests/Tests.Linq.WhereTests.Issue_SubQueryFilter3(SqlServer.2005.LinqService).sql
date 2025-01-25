BeforeExecute
-- SqlServer.2005
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
				INNER JOIN (
					SELECT
						[d].[PersonID] as [ID],
						ROW_NUMBER() OVER (PARTITION BY [d].[PersonID] ORDER BY [d].[PersonID]) as [rn]
					FROM
						[Person] [d]
				) [t1] ON [t1].[ID] = [patient_1].[PersonID] AND [t1].[rn] <= 1
		WHERE
			[p].[FirstName] LIKE @filter ESCAPE N'~' AND [p].[PersonID] = [t1].[ID]
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
				INNER JOIN (
					SELECT
						[d_1].[PersonID] as [ID],
						ROW_NUMBER() OVER (PARTITION BY [d_1].[PersonID] ORDER BY [d_1].[PersonID]) as [rn]
					FROM
						[Person] [d_1]
				) [t2] ON [t2].[ID] = [patient_1].[PersonID] AND [t2].[rn] <= 1
		WHERE
			[p_1].[FirstName] LIKE @filter_1 ESCAPE N'~' AND [p_1].[PersonID] = [t2].[ID]
	)
ORDER BY
	[patient_1].[PersonID]

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

