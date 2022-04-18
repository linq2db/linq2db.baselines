BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 08:01:00.1255336 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

