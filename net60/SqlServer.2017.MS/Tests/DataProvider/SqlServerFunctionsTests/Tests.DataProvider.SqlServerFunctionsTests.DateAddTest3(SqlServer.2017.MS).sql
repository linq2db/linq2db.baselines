BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:52:08.2796149 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

