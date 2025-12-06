-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[r].[Value]
FROM
	[TakeSkipClass] [r]

