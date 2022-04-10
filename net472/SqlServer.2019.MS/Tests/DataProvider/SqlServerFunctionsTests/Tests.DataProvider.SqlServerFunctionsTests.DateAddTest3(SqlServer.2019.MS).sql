BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:26:58.1183405 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

