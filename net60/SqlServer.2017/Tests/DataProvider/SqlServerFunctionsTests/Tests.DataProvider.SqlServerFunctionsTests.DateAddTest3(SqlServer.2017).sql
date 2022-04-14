BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 22:10:44.4293121 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

