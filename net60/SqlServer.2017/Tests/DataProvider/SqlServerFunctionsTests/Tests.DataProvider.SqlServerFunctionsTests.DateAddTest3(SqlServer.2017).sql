BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:28:26.5483520 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

