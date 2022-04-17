BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:00:22.4161652 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

