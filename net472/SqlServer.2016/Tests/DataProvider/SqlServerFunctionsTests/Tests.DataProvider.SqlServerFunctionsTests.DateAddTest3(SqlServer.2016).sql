BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:59:03.7758786 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

