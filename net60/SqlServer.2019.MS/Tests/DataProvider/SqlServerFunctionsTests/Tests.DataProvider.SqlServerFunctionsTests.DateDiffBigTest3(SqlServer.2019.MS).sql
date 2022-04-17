BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 06:06:29.8977742 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 06:06:29.8977860 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

