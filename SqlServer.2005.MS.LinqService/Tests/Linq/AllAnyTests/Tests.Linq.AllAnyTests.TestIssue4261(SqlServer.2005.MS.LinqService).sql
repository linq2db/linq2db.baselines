BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

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

