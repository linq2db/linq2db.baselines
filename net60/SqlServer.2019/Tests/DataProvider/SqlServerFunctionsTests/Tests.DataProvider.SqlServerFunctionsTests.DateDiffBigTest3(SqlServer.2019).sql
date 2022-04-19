BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:32:41.3747593 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:32:41.3747678 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

