-- Sybase.Managed Sybase

SELECT
	[p_1].[ID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			'123' + [p].[FirstName] + '0123451234' as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	1 = CharIndex('321', Reverse(Substring([p_1].[FirstName], 6, 6))) AND
	CharIndex('123', Substring(Left([p_1].[FirstName], 11), 6, Len(Left([p_1].[FirstName], 11)))) <> -5

