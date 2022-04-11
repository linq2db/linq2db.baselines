BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:03:21.9836918 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

