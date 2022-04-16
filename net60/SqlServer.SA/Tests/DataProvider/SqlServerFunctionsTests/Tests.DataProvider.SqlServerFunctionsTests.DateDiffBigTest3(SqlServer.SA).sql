BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:16:06.0978061 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:16:06.0978128 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

