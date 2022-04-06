BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:36:13.1239989 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

