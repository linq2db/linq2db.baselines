BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:07:22.3078076 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-30 01:07:22.3078120 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

