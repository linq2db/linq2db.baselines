BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] = 1

