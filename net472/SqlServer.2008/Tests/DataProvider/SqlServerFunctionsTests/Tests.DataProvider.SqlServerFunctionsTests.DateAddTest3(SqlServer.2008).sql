BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:13:28.6280715 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

