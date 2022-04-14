BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:25:15.2590611 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

