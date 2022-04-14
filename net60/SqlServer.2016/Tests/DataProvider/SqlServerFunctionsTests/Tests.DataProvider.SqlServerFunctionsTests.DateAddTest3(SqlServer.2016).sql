BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:45:10.9094922 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

