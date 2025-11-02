-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

