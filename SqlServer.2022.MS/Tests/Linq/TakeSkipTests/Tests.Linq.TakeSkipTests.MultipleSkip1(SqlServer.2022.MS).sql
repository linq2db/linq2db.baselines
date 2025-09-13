BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS

