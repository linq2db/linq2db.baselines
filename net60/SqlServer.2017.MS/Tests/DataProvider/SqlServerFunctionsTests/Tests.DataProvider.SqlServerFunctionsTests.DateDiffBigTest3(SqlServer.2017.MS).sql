BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:02:47.0773500 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 16:02:47.0773642 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

