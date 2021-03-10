BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([selectParam].[Value1] IS NULL, [c_1].[ChildID], [selectParam].[Value1])
FROM
	[Parent] [selectParam]
		INNER JOIN [Child] [c_1] ON ([selectParam].[ParentID] = [c_1].[ParentID])
GROUP BY
	Iif([selectParam].[Value1] IS NULL, [c_1].[ChildID], [selectParam].[Value1])

