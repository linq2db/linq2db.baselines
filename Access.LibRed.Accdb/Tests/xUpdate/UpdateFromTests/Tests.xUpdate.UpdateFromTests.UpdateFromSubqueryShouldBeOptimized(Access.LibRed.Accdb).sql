-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[UpdateSubquerySourceTable] [x]
		LEFT JOIN [UpdateSubquerySourceTable] [canChange] ON ([canChange].[Id] = [x].[Id] + 1)
SET
	[x].[FirstName] = IIF([canChange].[Id] IS NOT NULL, [canChange].[FirstName], [x].[FirstName]),
	[x].[LastName] = IIF([canChange].[Id] IS NOT NULL, [canChange].[LastName], [x].[LastName])
WHERE
	[x].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[UpdateSubquerySourceTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

