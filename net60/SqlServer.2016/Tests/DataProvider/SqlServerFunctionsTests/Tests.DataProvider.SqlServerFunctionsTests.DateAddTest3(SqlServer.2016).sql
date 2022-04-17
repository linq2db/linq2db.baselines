BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:11:44.6205868 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

