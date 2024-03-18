BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	MIN([t2].[ParentID]) as [MIN_1]
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

