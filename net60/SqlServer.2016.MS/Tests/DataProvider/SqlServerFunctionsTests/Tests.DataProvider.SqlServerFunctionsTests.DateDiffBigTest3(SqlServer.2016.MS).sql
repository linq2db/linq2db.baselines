BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:36:08.6144439 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 14:36:08.6144533 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

