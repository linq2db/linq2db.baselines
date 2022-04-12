BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:32:58.6297372 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:32:58.6297420 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

