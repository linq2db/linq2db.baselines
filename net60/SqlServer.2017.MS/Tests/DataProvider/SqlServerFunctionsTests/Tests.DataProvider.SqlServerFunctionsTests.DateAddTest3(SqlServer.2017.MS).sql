BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:36:25.1395219 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

