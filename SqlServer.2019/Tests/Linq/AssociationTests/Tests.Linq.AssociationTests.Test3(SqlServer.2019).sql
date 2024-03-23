BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]
		INNER JOIN [Child] [ch] ON [t1].[ParentID] = [ch].[ParentID]
WHERE
	([t1].[ParentID] < 4 OR [t1].[ParentID] >= 4)

