BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
	 EXISTS (
		SELECT
			*
		FROM
			[Person] [p]
				INNER JOIN (
					SELECT
						[d].[PersonID] as [cond],
						ROW_NUMBER() OVER (PARTITION BY [d].[PersonID] ORDER BY [d].[PersonID]) as [rn]
					FROM
						[Person] [d]
				) [t1] ON [t1].[cond] = [patient_1].[PersonID] AND [t1].[rn] <= 1
		WHERE
			[p].[FirstName] LIKE @filter ESCAPE '~' AND [p].[PersonID] = [t1].[cond]
	) AND
	 EXISTS (
		SELECT
			*
		FROM
			[Person] [p_1]
				INNER JOIN (
					SELECT
						[d_1].[PersonID] as [cond],
						ROW_NUMBER() OVER (PARTITION BY [d_1].[PersonID] ORDER BY [d_1].[PersonID]) as [rn]
					FROM
						[Person] [d_1]
				) [t2] ON [t2].[cond] = [patient_1].[PersonID] AND [t2].[rn] <= 1
		WHERE
			[p_1].[FirstName] LIKE @filter_1 ESCAPE '~' AND [p_1].[PersonID] = [t2].[cond]
	)
ORDER BY
	[patient_1].[PersonID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

