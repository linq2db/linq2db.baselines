BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:38:47.3043652 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

