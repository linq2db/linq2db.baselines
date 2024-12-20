BeforeExecute
-- SqlCe
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[COUNT_1] + 4 as [Count4]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > @n AND [p].[ParentID] = [c_1].[ParentID]
		) [t1]

