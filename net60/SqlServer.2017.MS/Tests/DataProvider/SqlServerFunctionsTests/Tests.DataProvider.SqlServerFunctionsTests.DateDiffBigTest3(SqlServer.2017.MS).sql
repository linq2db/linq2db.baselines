BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 13:43:54.7710713 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 13:43:54.7710789 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

