BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:13:02.2843187 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

