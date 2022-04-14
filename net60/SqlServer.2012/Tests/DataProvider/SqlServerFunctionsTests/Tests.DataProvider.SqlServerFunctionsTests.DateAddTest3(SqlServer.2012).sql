BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:19:20.4709135 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

