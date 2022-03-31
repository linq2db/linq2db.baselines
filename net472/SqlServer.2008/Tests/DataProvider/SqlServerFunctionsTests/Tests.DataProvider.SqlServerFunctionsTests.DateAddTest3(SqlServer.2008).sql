BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:13:04.1735744 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

