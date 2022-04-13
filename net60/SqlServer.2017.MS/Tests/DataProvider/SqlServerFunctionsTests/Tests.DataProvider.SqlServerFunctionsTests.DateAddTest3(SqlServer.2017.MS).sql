BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:07:12.4422187 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

