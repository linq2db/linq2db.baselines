BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:52:17.7388943 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

