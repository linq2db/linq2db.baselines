BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT TOP (@take)
			*
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

