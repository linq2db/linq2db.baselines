BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]

