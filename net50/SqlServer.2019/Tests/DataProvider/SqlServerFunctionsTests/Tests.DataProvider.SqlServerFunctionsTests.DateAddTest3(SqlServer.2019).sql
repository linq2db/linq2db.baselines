BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:56:00.2888548 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

