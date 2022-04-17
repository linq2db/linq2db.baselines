BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:08:36.2703000 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

