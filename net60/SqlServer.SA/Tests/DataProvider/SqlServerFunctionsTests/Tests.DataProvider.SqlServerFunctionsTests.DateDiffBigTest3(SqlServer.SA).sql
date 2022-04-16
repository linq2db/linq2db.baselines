BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:52:00.8830385 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:52:00.8830433 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

