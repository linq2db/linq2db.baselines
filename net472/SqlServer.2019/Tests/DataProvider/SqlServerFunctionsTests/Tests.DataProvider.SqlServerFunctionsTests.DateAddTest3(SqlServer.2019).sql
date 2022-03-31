BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:52:01.2374909 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

