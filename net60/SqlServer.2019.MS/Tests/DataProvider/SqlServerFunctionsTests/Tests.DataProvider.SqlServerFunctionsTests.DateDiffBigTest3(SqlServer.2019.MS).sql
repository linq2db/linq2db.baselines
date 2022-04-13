BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:31:22.7126047 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:31:22.7126167 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

