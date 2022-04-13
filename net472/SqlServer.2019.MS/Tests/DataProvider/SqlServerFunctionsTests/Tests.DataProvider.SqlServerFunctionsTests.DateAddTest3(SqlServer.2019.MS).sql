BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:22:07.9264635 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

