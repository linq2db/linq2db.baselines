BeforeExecute
-- Access AccessOleDb

SELECT
	Max(IIF([t1].[ChildID] > 20, 1, 0))
FROM
	[Child] [t1]

