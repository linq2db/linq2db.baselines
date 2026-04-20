-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- SqlServer.Contained SqlServer.2019

UPDATE
	[x]
SET
	[x].[FirstName] = IIF([canChange].[Id] IS NOT NULL, [canChange].[FirstName], [x].[FirstName]),
	[x].[LastName] = IIF([canChange].[Id] IS NOT NULL, [canChange].[LastName], [x].[LastName])
FROM
	[UpdateSubquerySourceTable] [x]
		LEFT JOIN [UpdateSubquerySourceTable] [canChange] ON [canChange].[Id] = [x].[Id] + 1
WHERE
	[x].[Id] = 1

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

