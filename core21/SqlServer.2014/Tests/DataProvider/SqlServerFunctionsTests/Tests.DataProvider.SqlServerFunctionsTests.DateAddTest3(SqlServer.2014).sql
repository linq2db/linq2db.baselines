BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:43:21.4923632 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

