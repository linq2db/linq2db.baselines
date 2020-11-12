BeforeExecute
-- SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET @skip ROWS
	) [t2]

