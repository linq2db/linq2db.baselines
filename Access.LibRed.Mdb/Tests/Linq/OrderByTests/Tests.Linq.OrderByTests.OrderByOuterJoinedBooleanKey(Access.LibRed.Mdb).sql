-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [LinqDataTypes] [t] ON ([p].[ParentID] + 8 = [t].[ID])
ORDER BY
	-[t].[BoolValue],
	[p].[ParentID]

