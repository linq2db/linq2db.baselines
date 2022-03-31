BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:56:00.3079422 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:56:00.3079481 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

