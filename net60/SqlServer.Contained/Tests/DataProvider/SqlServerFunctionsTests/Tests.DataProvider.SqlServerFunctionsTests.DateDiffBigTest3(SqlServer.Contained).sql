BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:21:56.3520378 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:21:56.3520441 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

