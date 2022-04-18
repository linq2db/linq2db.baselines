BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:20:58.1177859 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

