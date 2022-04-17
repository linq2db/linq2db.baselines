BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:19:35.4205587 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

