BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:31:42.5449672 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

