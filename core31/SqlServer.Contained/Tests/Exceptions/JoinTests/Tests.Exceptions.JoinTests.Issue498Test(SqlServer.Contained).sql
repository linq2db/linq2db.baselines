BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]
GROUP BY
	[x].[ParentID]

