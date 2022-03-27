BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:11:57.8255793 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

