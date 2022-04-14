BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:40:26.5769178 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

