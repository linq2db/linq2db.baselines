BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [i].[PersonID]
	),
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + N', ' + [i].[FirstName],
	[i].[LastName] + N', ' + [i].[FirstName],
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d_1]
		WHERE
			[d_1].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> N'John'

