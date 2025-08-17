BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT N'Janet' AS [item]
		UNION ALL
		SELECT N'Doe'
		UNION ALL
		SELECT N'John'
		UNION ALL
		SELECT N'Doe') [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

