BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:40:14.5372205 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:40:14.5372274 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

