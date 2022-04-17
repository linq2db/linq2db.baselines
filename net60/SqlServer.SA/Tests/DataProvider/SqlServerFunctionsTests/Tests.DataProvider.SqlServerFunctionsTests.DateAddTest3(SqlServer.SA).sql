BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:45:52.0772565 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

