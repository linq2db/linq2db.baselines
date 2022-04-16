BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:56:56.5552550 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

