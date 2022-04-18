BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:02:47.0092569 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

