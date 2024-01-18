BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Count_1]
FROM
	(
		SELECT
			[p2].[ParentID] + 2 as [ID],
			[p2].[ParentID]
		FROM
			[Parent] [p2]
		WHERE
			[p2].[ParentID] > -1
	) [p1]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_1].[ParentID] + 1 as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] + 1 < [p1].[ID] AND [c_1].[ParentID] + 1 < [p1].[ID] AND
				[p1].[ParentID] = [c_1].[ParentID]
		) [t1]
WHERE
	[p1].[ID] > 0

