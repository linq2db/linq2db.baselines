BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		RIGHT MERGE JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

