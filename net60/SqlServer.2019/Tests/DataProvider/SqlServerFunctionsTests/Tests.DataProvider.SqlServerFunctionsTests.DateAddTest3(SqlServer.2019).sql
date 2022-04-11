BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:17:36.4486816 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

