BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:37:15.7905653 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

