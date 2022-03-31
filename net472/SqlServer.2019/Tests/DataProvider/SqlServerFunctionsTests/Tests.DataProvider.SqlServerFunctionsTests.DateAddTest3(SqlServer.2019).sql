BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:19:20.0658608 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

