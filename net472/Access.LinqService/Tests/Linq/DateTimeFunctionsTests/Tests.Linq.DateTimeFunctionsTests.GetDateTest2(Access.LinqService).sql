BeforeExecute
-- Access AccessOleDb

SELECT TOP 5
	DateValue(Now),
	Count(*)
FROM
	[Parent] [v]
		INNER JOIN [Child] [s] ON ([v].[ParentID] = [s].[ParentID])
WHERE
	[v].[Value1] > 0

