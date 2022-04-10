BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:32:14.9104227 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

