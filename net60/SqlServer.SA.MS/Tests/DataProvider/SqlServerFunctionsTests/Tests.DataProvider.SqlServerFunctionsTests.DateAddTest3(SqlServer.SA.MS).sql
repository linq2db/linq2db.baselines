BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:56:27.4387282 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

