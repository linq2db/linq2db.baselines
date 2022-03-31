BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:19:42.8355806 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

