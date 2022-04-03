BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:36:17.4627997 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

