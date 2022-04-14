BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:36:37.5504120 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

