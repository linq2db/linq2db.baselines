BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:20:42.2376828 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

