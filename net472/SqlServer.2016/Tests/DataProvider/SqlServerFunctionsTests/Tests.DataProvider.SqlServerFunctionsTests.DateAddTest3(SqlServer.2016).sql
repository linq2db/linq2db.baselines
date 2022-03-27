BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:50:40.7942144 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

