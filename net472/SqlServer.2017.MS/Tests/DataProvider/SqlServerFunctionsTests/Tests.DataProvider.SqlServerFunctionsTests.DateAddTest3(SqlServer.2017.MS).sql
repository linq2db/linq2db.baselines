BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:59:42.7452105 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

