BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:53:15.5664412 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

