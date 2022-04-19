BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:39:53.1372306 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:39:53.1372398 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

