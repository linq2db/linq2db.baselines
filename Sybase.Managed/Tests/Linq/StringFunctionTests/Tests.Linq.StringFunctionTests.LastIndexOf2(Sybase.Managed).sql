BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(3) -- String
SET     @p = '123'

SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Len('123' + [p].[FirstName] + '012345') - CharIndex('321', Reverse(Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345') - 5))) = 10 AND
	(CharIndex(@p, Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345'))) + 5 <> 0 OR CharIndex(@p, Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345'))) IS NULL)

