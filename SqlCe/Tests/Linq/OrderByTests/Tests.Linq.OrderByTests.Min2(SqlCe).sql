BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	Min([t1].[ParentID])
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
		ORDER BY
			[p].[ParentID]
	) [t1]

