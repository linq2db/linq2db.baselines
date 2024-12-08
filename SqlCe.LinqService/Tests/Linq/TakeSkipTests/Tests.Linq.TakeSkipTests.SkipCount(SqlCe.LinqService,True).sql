BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID]
		OFFSET @skip ROWS
	) [t2]

