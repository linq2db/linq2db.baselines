BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:04:25.5432142 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

