BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:14:44.4158959 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

