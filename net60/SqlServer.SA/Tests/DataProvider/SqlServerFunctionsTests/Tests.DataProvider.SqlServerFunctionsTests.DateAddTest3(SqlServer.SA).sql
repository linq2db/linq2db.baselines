BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:57:09.1275905 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

