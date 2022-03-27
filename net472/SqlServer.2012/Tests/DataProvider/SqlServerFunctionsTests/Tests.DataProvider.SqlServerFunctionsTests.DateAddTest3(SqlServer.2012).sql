BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:44:26.3533569 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

