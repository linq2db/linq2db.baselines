BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 14:59:54.1784611 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 14:59:54.1784678 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

