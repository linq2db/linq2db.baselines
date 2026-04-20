-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[x]
SET
	[x].[FirstName] = CASE
		WHEN [canChange].[Id] IS NOT NULL THEN [canChange].[FirstName]
		ELSE [x].[FirstName]
	END,
	[x].[LastName] = CASE
		WHEN [canChange].[Id] IS NOT NULL THEN [canChange].[LastName]
		ELSE [x].[LastName]
	END
FROM
	[UpdateSubquerySourceTable] [x]
		LEFT JOIN [UpdateSubquerySourceTable] [canChange] ON [canChange].[Id] = [x].[Id] + 1
WHERE
	[x].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

