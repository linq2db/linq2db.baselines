BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:10:22.2762277 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

