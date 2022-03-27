BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:47:07.1486628 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

