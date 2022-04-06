BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 18:39:25.3252587 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

