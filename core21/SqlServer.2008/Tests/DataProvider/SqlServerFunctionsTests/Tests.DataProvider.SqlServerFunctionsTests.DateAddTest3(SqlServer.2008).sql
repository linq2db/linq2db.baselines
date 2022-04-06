BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:12:02.2000002 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

