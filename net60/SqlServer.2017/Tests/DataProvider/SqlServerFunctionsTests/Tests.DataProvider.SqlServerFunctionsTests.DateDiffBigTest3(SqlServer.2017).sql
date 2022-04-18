BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:55:20.3384071 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:55:20.3384128 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

