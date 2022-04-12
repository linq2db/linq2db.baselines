BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:18:14.4130674 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

