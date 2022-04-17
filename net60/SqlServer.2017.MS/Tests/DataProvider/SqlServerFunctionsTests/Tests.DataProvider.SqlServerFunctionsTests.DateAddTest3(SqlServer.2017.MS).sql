BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:46:07.0057325 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

