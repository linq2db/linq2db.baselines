BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:54:49.8851764 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

