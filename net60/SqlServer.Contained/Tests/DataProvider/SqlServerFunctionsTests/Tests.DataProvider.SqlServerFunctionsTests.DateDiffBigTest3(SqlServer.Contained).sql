BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:30:18.2520019 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 03:30:18.2520075 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

