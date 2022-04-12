BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:11:31.0188274 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

