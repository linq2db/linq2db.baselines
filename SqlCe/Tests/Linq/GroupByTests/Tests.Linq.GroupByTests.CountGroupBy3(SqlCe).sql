BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

