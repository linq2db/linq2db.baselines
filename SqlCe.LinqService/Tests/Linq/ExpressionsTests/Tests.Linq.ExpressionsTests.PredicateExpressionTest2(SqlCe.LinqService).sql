BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [c_1].[ParentID]

