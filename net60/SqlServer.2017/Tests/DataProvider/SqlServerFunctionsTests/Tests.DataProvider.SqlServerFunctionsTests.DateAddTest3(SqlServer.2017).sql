BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:46:06.9959158 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

