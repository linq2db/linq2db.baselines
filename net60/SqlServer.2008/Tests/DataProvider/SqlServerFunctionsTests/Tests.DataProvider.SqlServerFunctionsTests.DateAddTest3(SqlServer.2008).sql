BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 21:52:22.9814284 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

