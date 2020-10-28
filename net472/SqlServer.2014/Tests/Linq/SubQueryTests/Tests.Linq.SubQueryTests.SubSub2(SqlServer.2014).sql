BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Count_1]
FROM
	[Parent] [p2]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_1].[ParentID] + 1 as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] + 1 < [p2].[ParentID] + 2 AND [c_1].[ParentID] + 1 < [p2].[ParentID] + 2 AND
				[p2].[ParentID] = [c_1].[ParentID]
		) [t1]
WHERE
	[p2].[ParentID] + 2 > 0 AND [p2].[ParentID] + 1 > 0

