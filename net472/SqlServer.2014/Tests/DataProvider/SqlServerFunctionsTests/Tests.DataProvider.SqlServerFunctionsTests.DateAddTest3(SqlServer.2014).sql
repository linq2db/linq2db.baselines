BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:43:18.0270970 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

