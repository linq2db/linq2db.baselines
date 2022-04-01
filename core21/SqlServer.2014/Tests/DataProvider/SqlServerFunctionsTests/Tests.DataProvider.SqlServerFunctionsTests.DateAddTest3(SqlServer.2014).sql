BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:35:25.3690966 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

