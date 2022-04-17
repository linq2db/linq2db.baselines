BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:19:13.4689994 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

