BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:18:55.1428670 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

