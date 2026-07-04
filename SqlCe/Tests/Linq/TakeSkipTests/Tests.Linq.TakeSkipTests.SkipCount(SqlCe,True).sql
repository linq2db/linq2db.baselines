-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ParentID]
		OFFSET @skip ROWS
	) [t2]

