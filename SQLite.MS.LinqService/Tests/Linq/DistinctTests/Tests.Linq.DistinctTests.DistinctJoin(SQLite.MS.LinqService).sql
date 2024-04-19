BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[ID],
	[p].[SmallIntValue]
FROM
	(
		SELECT DISTINCT
			[_].[ID],
			[_].[SmallIntValue]
		FROM
			[LinqDataTypes] [_]
	) [e]
		LEFT JOIN (
			SELECT DISTINCT
				[_1].[ID],
				[_1].[SmallIntValue]
			FROM
				[LinqDataTypes] [_1]
		) [p] ON [p].[ID] = [e].[ID]

