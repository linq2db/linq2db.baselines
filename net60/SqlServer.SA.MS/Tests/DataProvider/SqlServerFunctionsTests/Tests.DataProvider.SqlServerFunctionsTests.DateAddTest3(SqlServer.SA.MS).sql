BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:21:56.3059920 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

