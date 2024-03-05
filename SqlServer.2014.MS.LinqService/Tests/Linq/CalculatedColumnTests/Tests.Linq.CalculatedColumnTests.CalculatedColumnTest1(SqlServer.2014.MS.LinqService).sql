BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
			Count(*)
		FROM
			[Doctor] [t1]
		WHERE
			[t1].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> N'John'

