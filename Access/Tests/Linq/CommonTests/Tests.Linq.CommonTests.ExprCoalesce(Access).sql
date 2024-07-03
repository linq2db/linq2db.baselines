BeforeExecute
-- Access AccessOleDb

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100) + 50
FROM
	[Parent] [p]

