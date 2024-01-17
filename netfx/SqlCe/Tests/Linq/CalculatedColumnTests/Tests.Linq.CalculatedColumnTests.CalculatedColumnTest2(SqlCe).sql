BeforeExecute
-- SqlCe

SELECT
	[t2].[PersonID],
	[t2].[FirstName],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender],
	[t2].[LastName] + ', ' + [t2].[FirstName],
	[t1].[cnt]
FROM
	[Person] [t2]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[d].[PersonID]
			FROM
				[Doctor] [d]
			GROUP BY
				[d].[PersonID]
		) [t1] ON [t1].[PersonID] = [t2].[PersonID]

BeforeExecute
-- SqlCe

SELECT
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + ', ' + [i].[FirstName],
	[t1].[cnt]
FROM
	[Person] [i]
		LEFT JOIN (
			SELECT
				Count(*) as [cnt],
				[d].[PersonID]
			FROM
				[Doctor] [d]
			GROUP BY
				[d].[PersonID]
		) [t1] ON [t1].[PersonID] = [i].[PersonID]
WHERE
	[i].[LastName] + ', ' + [i].[FirstName] <> 'Pupkin, John'

