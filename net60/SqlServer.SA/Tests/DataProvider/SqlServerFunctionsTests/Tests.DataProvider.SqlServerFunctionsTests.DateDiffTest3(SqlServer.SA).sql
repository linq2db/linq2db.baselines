BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:02:32.4965756 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 03:02:32.4965828 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

