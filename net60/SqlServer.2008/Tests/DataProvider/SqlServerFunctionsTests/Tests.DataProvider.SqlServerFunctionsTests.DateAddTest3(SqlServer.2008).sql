BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:25:48.8243617 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

