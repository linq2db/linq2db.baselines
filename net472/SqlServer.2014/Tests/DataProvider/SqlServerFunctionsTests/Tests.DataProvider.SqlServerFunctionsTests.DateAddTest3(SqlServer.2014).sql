BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:24:24.6580853 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

