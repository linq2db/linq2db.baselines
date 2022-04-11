BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:03:22.1986648 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:03:22.1986648 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

