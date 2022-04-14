BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:45:57.3795001 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

