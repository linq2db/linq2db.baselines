BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[COUNT_1],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [ch]
			WHERE
				[p].[ParentID] = [ch].[ParentID]
		) [t1]
		CROSS APPLY (
			SELECT TOP (1)
				[ch_1].[ParentID],
				[ch_1].[ChildID]
			FROM
				[Child] [ch_1]
			WHERE
				[p].[ParentID] = [ch_1].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] = 1

