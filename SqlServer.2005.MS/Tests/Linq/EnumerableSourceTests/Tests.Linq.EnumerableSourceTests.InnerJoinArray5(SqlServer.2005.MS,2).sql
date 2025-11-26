-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	(
		SELECT N'Janet' AS [item], N'Janet' AS [item0]
		UNION ALL
		SELECT N'Doe', N'Doe'
		UNION ALL
		SELECT N'John', N'John'
		UNION ALL
		SELECT N'Doe', N'Doe') [n]
		INNER JOIN [Person] [p] ON [n].[item] = [p].[LastName]

