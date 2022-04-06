BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:44:18.7691191 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

