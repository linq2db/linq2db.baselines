BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:18:55.2254750 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:18:55.2254852 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

