BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND CASE
		WHEN '' = '123' + [p].[FirstName] + '012345' THEN 0
		ELSE CHAR_LENGTH('123' + [p].[FirstName] + '012345')
	END - CharIndex('321', Reverse(Substring('123' + [p].[FirstName] + '012345', 6, CASE
		WHEN '' = '123' + [p].[FirstName] + '012345' THEN 0
		ELSE CHAR_LENGTH('123' + [p].[FirstName] + '012345')
	END - 5))) = 10 AND
	CharIndex('123', Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345'))) <> -5

