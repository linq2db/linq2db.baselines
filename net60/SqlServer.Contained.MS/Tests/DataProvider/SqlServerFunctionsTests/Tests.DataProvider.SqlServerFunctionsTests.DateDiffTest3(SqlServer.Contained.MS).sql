BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:26:59.6150276 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:26:59.6150336 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

