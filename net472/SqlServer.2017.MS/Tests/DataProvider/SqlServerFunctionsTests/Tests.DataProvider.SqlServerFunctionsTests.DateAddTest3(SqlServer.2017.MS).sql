BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:45:34.5149182 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

