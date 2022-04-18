BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:47:53.5692943 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

