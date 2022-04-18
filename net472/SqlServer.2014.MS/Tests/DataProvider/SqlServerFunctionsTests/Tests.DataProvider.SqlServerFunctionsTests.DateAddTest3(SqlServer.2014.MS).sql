BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:57:44.4481514 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

