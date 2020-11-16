BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Person] [_]
	) [t1]
WHERE
	[t1].[RN] > @skip

