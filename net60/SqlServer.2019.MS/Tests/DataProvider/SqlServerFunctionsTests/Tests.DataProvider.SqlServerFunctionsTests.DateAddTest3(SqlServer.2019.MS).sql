BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:24:38.3712723 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

