BeforeExecute
-- SqlCe (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS

