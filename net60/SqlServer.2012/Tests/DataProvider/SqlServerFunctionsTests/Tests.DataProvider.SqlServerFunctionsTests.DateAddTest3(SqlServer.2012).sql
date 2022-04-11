BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:12:17.1844897 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

