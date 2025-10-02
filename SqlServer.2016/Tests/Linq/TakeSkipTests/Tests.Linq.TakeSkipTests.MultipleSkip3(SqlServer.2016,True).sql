BeforeExecute
-- SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 6

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS

