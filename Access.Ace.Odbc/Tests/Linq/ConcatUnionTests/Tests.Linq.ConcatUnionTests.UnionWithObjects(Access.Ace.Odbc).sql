-- Access.Ace.Odbc AccessODBC

SELECT
	[cross_1].[ParentID],
	[cross_1].[Value1],
	[cross_1].[ParentID_1],
	[cross_1].[Value1_1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			[p2].[ParentID] as [ParentID_1],
			[p2].[Value1] as [Value1_1]
		FROM
			[Parent] [p],
			[Parent] [p2]
	) [cross_1]
		INNER JOIN [Child] [c_1] ON ([cross_1].[ParentID] = [c_1].[ParentID])
UNION
SELECT
	[cross_2].[ParentID_1],
	[cross_2].[Value1],
	[cross_2].[ParentID],
	[cross_2].[Value1_1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	(
		SELECT
			[p2_1].[ParentID],
			[p_1].[ParentID] as [ParentID_1],
			[p_1].[Value1],
			[p2_1].[Value1] as [Value1_1]
		FROM
			[Parent] [p_1],
			[Parent] [p2_1]
	) [cross_2]
		INNER JOIN [Child] [c_2] ON ([cross_2].[ParentID] = [c_2].[ParentID])

