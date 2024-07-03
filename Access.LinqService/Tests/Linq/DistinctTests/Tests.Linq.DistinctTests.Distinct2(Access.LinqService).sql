BeforeExecute
-- Access AccessOleDb

SELECT DISTINCT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], [p].[ParentID] MOD 2)
FROM
	[Parent] [p]

