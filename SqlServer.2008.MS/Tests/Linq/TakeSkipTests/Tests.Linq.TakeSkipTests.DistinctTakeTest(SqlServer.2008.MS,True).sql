-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t2].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [t1]
	) [t2]

