BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND (Len('123' + [p].[FirstName] + '012345') - CharIndex('321', Reverse(Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345') - 5)))) - Len('123') = 7 AND
	CharIndex('123', Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345'))) <> -5

