BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:32:41.7640663 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 03:32:41.7640717 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

