BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:59:46.5548423 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 15:59:46.5548511 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

