BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.4495601 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 00:22:18.4495654 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

