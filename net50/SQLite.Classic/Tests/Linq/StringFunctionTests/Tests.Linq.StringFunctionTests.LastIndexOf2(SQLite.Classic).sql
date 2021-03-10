BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[ID],
	[p_1].[FirstName_1]
FROM
	(
		SELECT
			'123' || [p].[FirstName] || '012345' as [FirstName],
			[p].[PersonID] as [ID],
			[p].[FirstName] as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	CASE
		WHEN CharIndex('123', [p_1].[FirstName], 6) = 0
			THEN -1
		ELSE Length([p_1].[FirstName]) - CharIndex('321', Reverse(Substr([p_1].[FirstName], 6, Length([p_1].[FirstName]) - 5))) - 2
	END = 8

