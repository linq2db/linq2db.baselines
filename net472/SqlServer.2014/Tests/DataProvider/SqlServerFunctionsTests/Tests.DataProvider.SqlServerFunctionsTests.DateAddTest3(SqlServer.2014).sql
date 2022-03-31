BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 08:54:33.6309539 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

