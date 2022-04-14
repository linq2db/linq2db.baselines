BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:17.4122235 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:39:17.4122298 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

