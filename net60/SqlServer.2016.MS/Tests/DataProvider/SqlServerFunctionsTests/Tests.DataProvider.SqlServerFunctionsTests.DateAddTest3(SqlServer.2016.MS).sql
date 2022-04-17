BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:24:02.4183568 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

