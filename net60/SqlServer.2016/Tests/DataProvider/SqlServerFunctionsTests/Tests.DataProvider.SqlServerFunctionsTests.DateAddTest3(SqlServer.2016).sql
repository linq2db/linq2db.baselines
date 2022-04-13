BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:27:56.5589847 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

