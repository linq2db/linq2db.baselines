BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:30:37.6252841 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

