BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t2]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID]
			FROM
				[Child] [ch]
			WHERE
				[t2].[ParentID] = [ch].[ParentID]
		) [t1]
WHERE
	[t2].[ParentID] = 1

