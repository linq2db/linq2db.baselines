BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:09:18.0962076 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

