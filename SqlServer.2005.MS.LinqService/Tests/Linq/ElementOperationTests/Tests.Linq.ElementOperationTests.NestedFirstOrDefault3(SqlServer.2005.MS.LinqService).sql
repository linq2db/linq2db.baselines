BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT DISTINCT
				[a_Children].[ParentID],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentID] ORDER BY [a_Children].[ParentID]) as [rn]
			FROM
				[Child] [a_Children]
		) [t1] ON [p].[ParentID] = [t1].[ParentID] AND [t1].[rn] <= 1

