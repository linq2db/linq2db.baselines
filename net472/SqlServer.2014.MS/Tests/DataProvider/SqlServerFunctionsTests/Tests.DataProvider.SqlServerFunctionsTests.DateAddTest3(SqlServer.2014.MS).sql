BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:18:13.7208866 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

