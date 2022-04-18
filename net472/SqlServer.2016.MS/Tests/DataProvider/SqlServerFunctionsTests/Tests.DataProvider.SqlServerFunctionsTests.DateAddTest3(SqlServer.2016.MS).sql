BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:50:35.2244107 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

