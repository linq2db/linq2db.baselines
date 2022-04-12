BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:00:39.8863075 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

