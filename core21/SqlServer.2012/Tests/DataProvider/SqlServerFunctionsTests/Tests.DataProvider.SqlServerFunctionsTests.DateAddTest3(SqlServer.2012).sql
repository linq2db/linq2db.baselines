BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:08:40.8383961 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

