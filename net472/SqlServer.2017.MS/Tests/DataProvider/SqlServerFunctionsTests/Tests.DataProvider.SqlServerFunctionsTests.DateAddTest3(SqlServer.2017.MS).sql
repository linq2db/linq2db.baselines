BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:09:46.2824363 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

