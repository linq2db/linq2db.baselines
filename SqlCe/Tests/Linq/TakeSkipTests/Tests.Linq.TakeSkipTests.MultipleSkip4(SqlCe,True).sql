BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS

