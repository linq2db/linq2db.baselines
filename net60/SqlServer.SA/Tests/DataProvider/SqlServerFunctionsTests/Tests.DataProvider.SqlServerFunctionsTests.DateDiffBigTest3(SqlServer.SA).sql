BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 13:11:26.0060513 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 13:11:26.0060577 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

