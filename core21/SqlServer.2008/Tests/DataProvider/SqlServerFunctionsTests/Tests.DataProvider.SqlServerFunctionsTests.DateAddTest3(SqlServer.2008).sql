BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:40:10.2533107 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

