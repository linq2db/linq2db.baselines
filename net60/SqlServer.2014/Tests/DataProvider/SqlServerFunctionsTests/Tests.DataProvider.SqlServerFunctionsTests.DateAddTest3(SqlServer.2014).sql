BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:49:27.3618520 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

