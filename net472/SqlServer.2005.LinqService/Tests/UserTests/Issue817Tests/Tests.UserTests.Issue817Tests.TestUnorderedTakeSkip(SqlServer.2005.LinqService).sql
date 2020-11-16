BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 2

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
	[t1].[RN] > @skip AND [t1].[RN] <= @skip_1

