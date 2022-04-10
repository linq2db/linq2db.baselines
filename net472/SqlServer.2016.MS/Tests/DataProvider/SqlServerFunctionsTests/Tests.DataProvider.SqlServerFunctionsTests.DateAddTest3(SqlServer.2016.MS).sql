BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:14:15.5799290 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

