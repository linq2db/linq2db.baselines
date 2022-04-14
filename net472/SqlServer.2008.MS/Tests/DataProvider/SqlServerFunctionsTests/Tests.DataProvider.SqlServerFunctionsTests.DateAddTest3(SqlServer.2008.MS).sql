BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:30:32.5688785 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

