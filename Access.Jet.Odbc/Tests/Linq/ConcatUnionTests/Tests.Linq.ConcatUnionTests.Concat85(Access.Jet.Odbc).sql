-- Access.Jet.Odbc AccessODBC
SELECT
	[c_1].[ParentID],
	IIF([c_1].[Value1] IS NULL, 0, [c_1].[Value1]) as [ID2],
	[c_1].[ParentID] as [ID1_1]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ParentID] + 1 as [ID2],
	[c_2].[ChildID] as [ID1_1]
FROM
	[Child] [c_2]

