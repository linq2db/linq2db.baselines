-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		INNER JOIN [Child] [t1] ON [p].[ParentID] = [t1].[ParentID] + 1

