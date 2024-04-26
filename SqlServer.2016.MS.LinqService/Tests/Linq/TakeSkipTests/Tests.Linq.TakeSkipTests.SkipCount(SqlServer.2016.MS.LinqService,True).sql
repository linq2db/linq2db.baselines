BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET @skip ROWS
	) [t2]

