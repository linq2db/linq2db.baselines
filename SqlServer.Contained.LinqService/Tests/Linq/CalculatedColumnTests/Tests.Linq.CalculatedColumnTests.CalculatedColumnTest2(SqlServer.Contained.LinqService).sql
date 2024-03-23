BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[t1].[LastName] + N', ' + [t1].[FirstName],
	[t1].[LastName] + N', ' + [t1].[FirstName],
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [t1].[PersonID]
	)
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
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
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[LastName] + N', ' + [i].[FirstName] <> N'Pupkin, John'

