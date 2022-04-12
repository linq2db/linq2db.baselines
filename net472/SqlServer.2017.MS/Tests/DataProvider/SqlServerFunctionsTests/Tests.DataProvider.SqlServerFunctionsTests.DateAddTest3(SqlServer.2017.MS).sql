BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 21:59:00.0009784 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

