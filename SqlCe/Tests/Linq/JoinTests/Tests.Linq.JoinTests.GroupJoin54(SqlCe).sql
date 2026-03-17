-- SqlCe

SELECT
	[t2].[p1],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[p].[ParentID] = [ch].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [p1]
			FROM
				[Child] [ch_1]
			WHERE
				[p].[ParentID] = [ch_1].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] = 1

