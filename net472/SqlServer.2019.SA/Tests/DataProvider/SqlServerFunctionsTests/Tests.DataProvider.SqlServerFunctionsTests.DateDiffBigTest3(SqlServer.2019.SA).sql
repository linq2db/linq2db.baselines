BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 18:39:25.4392762 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 18:39:25.4392762 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

