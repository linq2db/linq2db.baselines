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
	[i].[FirstName] <> 'John'

