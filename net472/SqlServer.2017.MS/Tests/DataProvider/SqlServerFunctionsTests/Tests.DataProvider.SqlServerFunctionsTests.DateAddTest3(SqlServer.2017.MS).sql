BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:55:34.8631505 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

