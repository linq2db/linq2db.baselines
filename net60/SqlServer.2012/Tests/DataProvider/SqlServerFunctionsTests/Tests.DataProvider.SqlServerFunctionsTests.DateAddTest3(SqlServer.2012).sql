BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:47:09.4688039 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

