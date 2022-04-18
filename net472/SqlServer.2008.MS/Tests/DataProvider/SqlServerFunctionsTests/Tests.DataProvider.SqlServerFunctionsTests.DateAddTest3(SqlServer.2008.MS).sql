BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:08:35.3294698 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

