BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:59:36.9360625 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:59:36.9360704 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

