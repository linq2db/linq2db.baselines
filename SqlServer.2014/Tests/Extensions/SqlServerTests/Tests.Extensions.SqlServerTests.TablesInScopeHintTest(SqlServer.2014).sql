-- SqlServer.2014
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p] WITH (NoLock, NoWait)
		CROSS JOIN [Child] [c_1] WITH (NoLock, NoWait)
		CROSS JOIN [Child] [c1] WITH (Index(IX_ChildIndex), NoLock, NoWait)
		CROSS JOIN [Child] [c_2] WITH (NoWait)
		INNER JOIN [Parent] [a_Parent] WITH (NoWait) ON [c_2].[ParentID] = [a_Parent].[ParentID]
		CROSS JOIN [Parent] [p1] WITH (HoldLock, NoWait)
		CROSS JOIN [Child] [c_3]
WHERE
	[c_1].[ParentID] = [p].[ParentID] AND
	[c1].[ParentID] = [p].[ParentID] AND
	[c_2].[ParentID] = [p].[ParentID] AND
	[a_Parent].[ParentID] > 0 AND
	[p1].[ParentID] = [p].[ParentID] AND
	[c_3].[ParentID] = [p].[ParentID]

