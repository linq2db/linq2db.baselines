BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:52:00.8346420 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

