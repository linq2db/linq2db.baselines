BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[r].[Value]
FROM
	[TakeSkipClass] [r]

