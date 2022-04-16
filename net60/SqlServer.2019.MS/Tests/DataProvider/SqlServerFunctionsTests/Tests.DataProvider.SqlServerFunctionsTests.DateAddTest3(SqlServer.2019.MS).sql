BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:48:08.0486042 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

