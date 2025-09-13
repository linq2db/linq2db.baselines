BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[r].[Value]
FROM
	[TakeSkipClass] [r]

