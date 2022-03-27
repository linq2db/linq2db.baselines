BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 06:59:38.0980646 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

