BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*) as [Count_1]
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

