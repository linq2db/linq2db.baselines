BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:45:45.8798771 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

