BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:06:46.0668334 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

