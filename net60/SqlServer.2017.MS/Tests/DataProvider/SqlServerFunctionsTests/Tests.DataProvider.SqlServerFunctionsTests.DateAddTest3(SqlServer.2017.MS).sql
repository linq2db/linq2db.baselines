BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:31:21.5748776 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

