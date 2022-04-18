BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:46:00.8873318 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

