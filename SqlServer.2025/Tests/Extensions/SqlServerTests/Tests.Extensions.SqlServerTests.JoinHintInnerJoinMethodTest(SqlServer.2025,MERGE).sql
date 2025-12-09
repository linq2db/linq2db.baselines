-- SqlServer.2025

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER MERGE JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

