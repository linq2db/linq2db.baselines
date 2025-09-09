BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID] + 1
FROM
	[Child] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID],
	IIF([c_2].[Value1] IS NULL, 0, [c_2].[Value1])
FROM
	[Parent] [c_2]

