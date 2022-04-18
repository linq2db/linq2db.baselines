BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:45:23.6855199 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

