BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:09:08.8627504 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

