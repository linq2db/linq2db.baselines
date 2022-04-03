BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 03:58:12.7761234 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 03:58:12.7761333 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

