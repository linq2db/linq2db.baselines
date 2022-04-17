BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.4509780 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 00:22:18.4509830 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

