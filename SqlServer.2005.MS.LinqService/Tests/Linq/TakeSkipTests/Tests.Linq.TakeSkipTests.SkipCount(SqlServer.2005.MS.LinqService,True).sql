BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t2].[c1]
		FROM
			(
				SELECT
					1 as [c1],
					ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
				FROM
					[Child] [t1]
			) [t2]
		WHERE
			[t2].[RN] > @skip
	) [t3]

