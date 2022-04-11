BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:17:36.5134911 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:17:36.5134977 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

