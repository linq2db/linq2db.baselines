BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:18:00.6899406 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:18:00.6899455 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

