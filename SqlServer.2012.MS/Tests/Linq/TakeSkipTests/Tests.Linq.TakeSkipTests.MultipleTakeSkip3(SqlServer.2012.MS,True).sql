-- SqlServer.2012.MS SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

