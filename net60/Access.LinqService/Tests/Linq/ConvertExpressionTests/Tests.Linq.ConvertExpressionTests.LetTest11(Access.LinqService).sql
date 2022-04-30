BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 0
ORDER BY
	[c_1].[ParentID]

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > -100

BeforeExecute
-- Access AccessOleDb

SELECT
	1
FROM
	[Parent] [p]

