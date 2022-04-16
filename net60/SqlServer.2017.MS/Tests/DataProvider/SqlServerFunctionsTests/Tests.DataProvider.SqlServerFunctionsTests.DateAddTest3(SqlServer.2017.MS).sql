BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 13:43:54.7409423 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

