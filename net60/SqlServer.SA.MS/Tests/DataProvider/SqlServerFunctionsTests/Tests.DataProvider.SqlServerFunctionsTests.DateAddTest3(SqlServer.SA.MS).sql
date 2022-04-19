BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:39:52.9405714 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

