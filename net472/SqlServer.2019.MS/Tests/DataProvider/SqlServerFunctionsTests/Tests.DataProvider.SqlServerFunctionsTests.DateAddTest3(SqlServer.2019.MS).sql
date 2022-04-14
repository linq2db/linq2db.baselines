BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:34:02.2073628 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

