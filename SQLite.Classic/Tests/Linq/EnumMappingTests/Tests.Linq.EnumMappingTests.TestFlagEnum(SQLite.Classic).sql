-- SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[IntValue]
FROM
	[TestTable5] [t]
WHERE
	([t].[IntValue] & 1) <> 0

