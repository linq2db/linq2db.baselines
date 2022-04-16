BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:44:20.1596054 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

