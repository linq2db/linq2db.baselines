BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:48:11.7179651 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

