BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[r].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [r]
	) [t1]

