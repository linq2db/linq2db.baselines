BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:28:53.6781419 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

