BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:07:07.2949421 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

