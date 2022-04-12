BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:26:40.5714111 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

