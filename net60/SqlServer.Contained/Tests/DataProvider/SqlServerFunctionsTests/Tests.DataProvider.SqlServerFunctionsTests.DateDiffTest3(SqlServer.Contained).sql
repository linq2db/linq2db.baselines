BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:30:18.3050510 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 03:30:18.3050558 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

