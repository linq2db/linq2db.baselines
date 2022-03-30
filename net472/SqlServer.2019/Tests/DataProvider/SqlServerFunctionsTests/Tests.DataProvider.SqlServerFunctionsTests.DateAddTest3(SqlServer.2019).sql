BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:18:21.7659050 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

