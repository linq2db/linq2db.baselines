BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:05:06.5671417 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

