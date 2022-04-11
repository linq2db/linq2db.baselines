BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 08:17:02.2356147 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 08:17:02.2356200 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

