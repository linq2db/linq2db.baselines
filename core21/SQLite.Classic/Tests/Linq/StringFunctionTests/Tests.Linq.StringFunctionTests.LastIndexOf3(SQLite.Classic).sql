BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p_1].[PersonID],
	[p_1].[FirstName_1]
FROM
	(
		SELECT
			'123' || [p].[FirstName] || '0123451234' as [FirstName],
			[p].[PersonID],
			[p].[FirstName] as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	CASE
		WHEN CharIndex('123', LeftStr([p_1].[FirstName], 11), 6) = 0
			THEN -1
		ELSE 11 - CharIndex('321', Reverse(Substr([p_1].[FirstName], 6, 6))) - 2
	END = 8

