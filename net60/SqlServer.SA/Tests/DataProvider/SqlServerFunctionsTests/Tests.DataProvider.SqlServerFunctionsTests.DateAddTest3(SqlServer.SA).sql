BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:44:39.5603758 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

