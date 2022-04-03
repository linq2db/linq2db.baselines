BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:26:28.1707398 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:26:28.1707398 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

