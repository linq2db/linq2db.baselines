BeforeExecute
-- Access AccessOleDb

SELECT
	[selectParam].[ChildID] + 1,
	Sum([selectParam].[ParentID])
FROM
	[Child] [selectParam]
GROUP BY
	[selectParam].[ChildID] + 1

