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
			SELECT N'Janet' AS [item]
			UNION ALL
			SELECT N'Doe'
			UNION ALL
			SELECT N'John'
			UNION ALL
			SELECT N'Doe') [n] ON [p].[LastName] = [n].[item]

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
			SELECT N'Janet' AS [item]
			UNION ALL
			SELECT N'Doe1'
			UNION ALL
			SELECT N'John'
			UNION ALL
			SELECT N'Doe') [n] ON [p].[LastName] = [n].[item]

