BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:26:08.0140565 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

