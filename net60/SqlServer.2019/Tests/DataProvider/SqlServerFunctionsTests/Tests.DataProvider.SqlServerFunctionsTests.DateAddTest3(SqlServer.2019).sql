BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:25:06.4866856 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

