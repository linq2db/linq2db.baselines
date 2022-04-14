BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:48:24.0421678 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

