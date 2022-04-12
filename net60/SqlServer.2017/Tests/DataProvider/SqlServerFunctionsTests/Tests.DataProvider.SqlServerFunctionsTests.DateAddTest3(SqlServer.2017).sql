BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:31:29.6334706 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

