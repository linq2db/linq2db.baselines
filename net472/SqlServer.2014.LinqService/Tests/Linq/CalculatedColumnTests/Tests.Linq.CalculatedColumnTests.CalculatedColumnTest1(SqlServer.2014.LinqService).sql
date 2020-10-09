BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[i].[PersonID], 
	[i].[FirstName], 
	[i].[LastName], 
	[i].[MiddleName], 
	[i].[Gender], 
	[i].[LastName] + N', ' + [i].[FirstName], 
	(
		SELECT 
			Count(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> N'John'

