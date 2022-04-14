BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:37:50.7494521 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

