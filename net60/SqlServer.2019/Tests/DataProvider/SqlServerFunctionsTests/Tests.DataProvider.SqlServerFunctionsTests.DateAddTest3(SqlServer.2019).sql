BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 13:11:25.9129842 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

