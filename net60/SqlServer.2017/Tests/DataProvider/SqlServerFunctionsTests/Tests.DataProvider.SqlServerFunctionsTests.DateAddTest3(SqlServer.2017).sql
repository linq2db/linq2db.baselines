BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 14:46:35.4775846 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

