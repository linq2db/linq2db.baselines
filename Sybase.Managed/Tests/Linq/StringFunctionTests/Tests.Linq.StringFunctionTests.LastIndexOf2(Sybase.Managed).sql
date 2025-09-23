BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Length Integer -- Int32
SET     @Length = 3

SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND (CHAR_LENGTH('123' + [p].[FirstName] + '012345') - CharIndex('321', Reverse(Substring('123' + [p].[FirstName] + '012345', 6, CHAR_LENGTH('123' + [p].[FirstName] + '012345') - 5)))) - @Length = 7 AND
	CharIndex('123', Substring('123' + [p].[FirstName] + '012345', 6, Len('123' + [p].[FirstName] + '012345'))) <> -5

