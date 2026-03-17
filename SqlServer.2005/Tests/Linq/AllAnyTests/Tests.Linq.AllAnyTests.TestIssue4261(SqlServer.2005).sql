-- SqlServer.2005

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT N'John' AS [item]
				UNION ALL
				SELECT N'Not John') [y]
		WHERE
			[y].[item] = [x].[FirstName]
	)

