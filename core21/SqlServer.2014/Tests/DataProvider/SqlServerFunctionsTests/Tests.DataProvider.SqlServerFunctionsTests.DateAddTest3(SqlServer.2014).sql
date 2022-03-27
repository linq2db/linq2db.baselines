BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:18:18.9579525 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

