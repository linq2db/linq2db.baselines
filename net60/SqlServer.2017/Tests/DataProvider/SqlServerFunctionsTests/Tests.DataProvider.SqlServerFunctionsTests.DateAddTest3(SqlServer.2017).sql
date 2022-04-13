BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:41:00.0478020 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

