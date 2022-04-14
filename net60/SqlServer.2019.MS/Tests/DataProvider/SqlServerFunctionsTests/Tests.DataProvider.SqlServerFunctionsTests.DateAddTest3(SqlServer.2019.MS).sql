BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 22:02:43.4305718 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

