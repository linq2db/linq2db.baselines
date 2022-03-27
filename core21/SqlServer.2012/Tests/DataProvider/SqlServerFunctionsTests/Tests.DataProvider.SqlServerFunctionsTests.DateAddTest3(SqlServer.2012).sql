BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:45:30.2671941 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

