BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:07:04.8783766 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:07:04.8783818 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

