BeforeExecute
-- SqlServer.2005

SELECT
	[y].[item]
FROM
	[Person] [x]
		CROSS JOIN (
			SELECT N'M' AS [item]
			UNION ALL
			SELECT N'F'
			UNION ALL
			SELECT N'U'
			UNION ALL
			SELECT N'O') [y]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

