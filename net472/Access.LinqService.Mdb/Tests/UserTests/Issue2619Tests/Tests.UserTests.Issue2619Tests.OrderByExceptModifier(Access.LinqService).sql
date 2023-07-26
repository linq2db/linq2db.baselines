BeforeExecute
-- Access AccessOleDb

SELECT DISTINCT
	[t2].[FirstName],
	[t2].[PersonID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT TOP 1
			[t1].[FirstName],
			[t1].[PersonID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender]
		FROM
			[Person] [t1]
		ORDER BY
			[t1].[LastName]
	) [t2]
WHERE
	NOT EXISTS(
		SELECT TOP 1
			*
		FROM
			[Person] [t3]
		WHERE
			[t2].[FirstName] = [t3].[FirstName] AND
			[t2].[PersonID] = [t3].[PersonID] AND
			[t2].[LastName] = [t3].[LastName] AND
			[t2].[MiddleName] = [t3].[MiddleName] AND
			[t2].[Gender] = [t3].[Gender]
		ORDER BY
			[t3].[LastName]
	)

