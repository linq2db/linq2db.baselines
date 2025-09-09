BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Child] [t1]
			) [t2]
		WHERE
			[t2].[RN] > @skip
	) [t3]

