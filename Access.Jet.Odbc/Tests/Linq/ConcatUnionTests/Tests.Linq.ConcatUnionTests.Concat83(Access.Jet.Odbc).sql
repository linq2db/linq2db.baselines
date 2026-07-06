-- Access.Jet.Odbc AccessODBC

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] as [ID1_1],
	IIF([c_1].[Value1] IS NULL, 0, [c_1].[Value1]) as [ID3]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ChildID] as [ID1_1],
	[c_2].[ParentID] + 1 as [ID3]
FROM
	[Child] [c_2]

