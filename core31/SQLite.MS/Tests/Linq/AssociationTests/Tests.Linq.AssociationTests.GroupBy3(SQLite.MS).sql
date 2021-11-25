BeforeExecute
-- SQLite.MS SQLite

SELECT
	Cast(StrFTime('%Y', [a_Types].[DateTimeValue]) as int)
FROM
	[Parent] [selectParam]
		LEFT JOIN [LinqDataTypes] [a_Types] ON [selectParam].[ParentID] = [a_Types].[ID]
GROUP BY
	Cast(StrFTime('%Y', [a_Types].[DateTimeValue]) as int)

