-- Access.Jet.Odbc AccessODBC
SELECT DISTINCT
	[p].[ParentID],
	[t].[BoolValue]
FROM
	[Parent] [p]
		LEFT JOIN [LinqDataTypes] [t] ON ([p].[ParentID] + 8 = [t].[ID])
ORDER BY
	([t].[BoolValue]) DESC,
	[p].[ParentID]

