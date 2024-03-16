BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [t3]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [ch]
			WHERE
				[t3].[ParentID] = [ch].[ParentID]
		) [t1]
		CROSS APPLY (
			SELECT TOP (1)
				[ch_1].[ParentID],
				[ch_1].[ChildID]
			FROM
				[Child] [ch_1]
			WHERE
				[t3].[ParentID] = [ch_1].[ParentID]
		) [t2]
WHERE
	[t3].[ParentID] = 1

