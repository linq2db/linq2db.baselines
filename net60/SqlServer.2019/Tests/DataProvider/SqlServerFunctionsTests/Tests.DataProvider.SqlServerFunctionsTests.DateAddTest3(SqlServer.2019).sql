BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:57:46.3926986 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

