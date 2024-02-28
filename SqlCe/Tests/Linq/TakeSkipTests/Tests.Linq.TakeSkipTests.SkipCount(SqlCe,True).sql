BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID],
			[t1].[ChildID]
		OFFSET @skip ROWS
	) [t2]

