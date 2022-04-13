BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:29:12.0316894 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

