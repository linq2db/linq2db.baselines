-- SQLite.MS SQLite

SELECT DISTINCT
	CAST(strftime('%Y', [a_Types].[DateTimeValue]) AS INTEGER)
FROM
	[Parent] [g_1]
		LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]

