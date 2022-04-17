BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:37:08.3789721 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

