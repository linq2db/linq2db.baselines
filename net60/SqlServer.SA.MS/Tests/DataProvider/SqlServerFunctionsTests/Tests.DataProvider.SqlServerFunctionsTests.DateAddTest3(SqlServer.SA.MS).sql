BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:45:45.8816731 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

