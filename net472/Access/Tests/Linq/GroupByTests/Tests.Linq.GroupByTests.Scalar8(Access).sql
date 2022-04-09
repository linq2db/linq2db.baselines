BeforeExecute
-- Access AccessOleDb

SELECT
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

