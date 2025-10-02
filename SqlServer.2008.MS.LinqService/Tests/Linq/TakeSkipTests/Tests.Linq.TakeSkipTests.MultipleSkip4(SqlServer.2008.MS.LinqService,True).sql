BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 2

SELECT
	[t2].[Id],
	[t2].[Value_1]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[Value] as [Value_1],
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip + @skip_1 + @skip_2
ORDER BY
	[t2].[Value_1]

