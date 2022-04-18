BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:44:25.5155006 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

