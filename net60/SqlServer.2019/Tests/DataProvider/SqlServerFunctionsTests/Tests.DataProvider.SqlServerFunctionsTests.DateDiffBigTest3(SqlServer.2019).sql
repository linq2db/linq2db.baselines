BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:13:04.2604982 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:13:04.2605061 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

