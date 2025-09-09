BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[gr_1].[ID],
	[gr_1].[ID] + 1
FROM
	(
		SELECT
			IIF([gr].[Value1] IS NULL, [c_1].[ChildID], [gr].[Value1]) as [ID]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON ([gr].[ParentID] = [c_1].[ParentID])
	) [gr_1]
GROUP BY
	[gr_1].[ID]

