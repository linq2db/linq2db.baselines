BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:19:19.6793846 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

