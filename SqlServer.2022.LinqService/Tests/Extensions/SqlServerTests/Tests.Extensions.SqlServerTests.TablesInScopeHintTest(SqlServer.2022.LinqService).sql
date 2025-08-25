BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (NoLock)
		CROSS JOIN [Child] [c_1] WITH (NoLock)
		CROSS JOIN [Child] [c1] WITH (Index(IX_ChildIndex), NoLock)
		CROSS JOIN [Child] [c_2] WITH (NoWait)
		LEFT JOIN [Parent] [a_Parent] WITH (NoWait) ON [c_2].[ParentID] = [a_Parent].[ParentID]
		CROSS JOIN [Parent] [p1] WITH (HoldLock)
		CROSS JOIN [Child] [c_3]
WHERE
	[c_1].[ParentID] = [p].[ParentID] AND
	[c1].[ParentID] = [p].[ParentID] AND
	[c_2].[ParentID] = [p].[ParentID] AND
	[a_Parent].[ParentID] > 0 AND
	[p1].[ParentID] = [p].[ParentID] AND
	[c_3].[ParentID] = [p].[ParentID]

