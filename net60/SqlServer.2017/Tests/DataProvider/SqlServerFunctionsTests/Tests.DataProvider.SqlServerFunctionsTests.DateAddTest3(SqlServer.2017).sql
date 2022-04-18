BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:44:10.2616640 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

