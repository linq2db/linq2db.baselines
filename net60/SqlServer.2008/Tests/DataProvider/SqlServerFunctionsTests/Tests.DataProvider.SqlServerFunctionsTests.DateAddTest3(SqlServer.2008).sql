BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:41:15.3978400 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

