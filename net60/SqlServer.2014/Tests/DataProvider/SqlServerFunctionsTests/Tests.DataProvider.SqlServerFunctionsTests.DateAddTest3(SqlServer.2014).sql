BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:58:00.8753018 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

