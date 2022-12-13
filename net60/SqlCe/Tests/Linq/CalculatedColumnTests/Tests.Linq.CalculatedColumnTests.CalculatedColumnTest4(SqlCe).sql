BeforeExecute
-- SqlCe

SELECT
	[t2].[PersonID],
	[t2].[FirstName],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender],
	[t2].[AsSqlFullName],
	[t2].[DoctorCount]
FROM
	[Doctor] [cp]
		INNER JOIN (
			SELECT
				[c_1].[PersonID],
				[c_1].[FirstName],
				[c_1].[LastName],
				[c_1].[MiddleName],
				[c_1].[Gender],
				[c_1].[LastName] + ', ' + [c_1].[FirstName] as [AsSqlFullName],
				[t1].[cnt] as [DoctorCount]
			FROM
				[Person] [c_1]
					LEFT JOIN (
						SELECT
							Count(*) as [cnt],
							[d].[PersonID]
						FROM
							[Doctor] [d]
						GROUP BY
							[d].[PersonID]
					) [t1] ON [t1].[PersonID] = [c_1].[PersonID]
		) [t2] ON [cp].[PersonID] = [t2].[PersonID]

