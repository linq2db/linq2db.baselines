BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:31:41.2492030 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:31:41.2492089 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

