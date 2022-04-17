BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:20:42.2943314 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:20:42.2943390 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

