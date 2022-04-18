BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 13:22:11.8371837 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

