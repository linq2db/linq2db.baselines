BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 06:12:02.6472651 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

