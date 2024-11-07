BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[p].[ParentID] = [ch].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] = 1

