-- Sybase.Managed Sybase

SELECT
	[p_1].[ID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			'123' + [p].[FirstName] + '012345' as [FirstName],
			[p].[FirstName] as [FirstName_1],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	CHAR_LENGTH('123' + [p_1].[FirstName_1] + '012345') - CharIndex('321', Reverse(Substring([p_1].[FirstName], 6, CHAR_LENGTH('123' + [p_1].[FirstName_1] + '012345') - 5))) = 10 AND
	CharIndex('123', Substring([p_1].[FirstName], 6, Len([p_1].[FirstName]))) <> -5

