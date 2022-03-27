BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 18:42:25.5439166 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

