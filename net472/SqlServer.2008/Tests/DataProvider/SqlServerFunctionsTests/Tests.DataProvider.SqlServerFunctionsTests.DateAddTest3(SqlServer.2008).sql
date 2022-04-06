BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:35:07.3879203 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

