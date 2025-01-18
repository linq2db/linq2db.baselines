BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]

