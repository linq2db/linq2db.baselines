BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (@take)
				[p].[ParentID]
			FROM
				[Child] [p]
			WHERE
				[p_1].[ParentID] = [p].[ParentID]
		) [t1]
WHERE
	(
		SELECT TOP (@take_1)
			1
		FROM
			[Child] [t2]
		WHERE
			[p_1].[ParentID] = [t2].[ParentID]
	) IS NOT NULL

