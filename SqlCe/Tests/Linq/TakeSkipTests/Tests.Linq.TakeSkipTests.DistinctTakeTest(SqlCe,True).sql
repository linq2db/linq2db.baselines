-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[r].[Value] as [Value_1]
FROM
	[TakeSkipClass] [r]

