BeforeExecute
-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT N'Janet' AS [Name]
			UNION ALL
			SELECT N'Doe') [n] ON [p].[LastName] = [n].[Name]

