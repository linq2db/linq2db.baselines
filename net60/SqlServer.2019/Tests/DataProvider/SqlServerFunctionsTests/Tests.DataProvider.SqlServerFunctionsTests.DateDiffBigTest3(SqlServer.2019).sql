BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:43.8619338 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:39:43.8619413 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

