BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:42:40.1977767 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

