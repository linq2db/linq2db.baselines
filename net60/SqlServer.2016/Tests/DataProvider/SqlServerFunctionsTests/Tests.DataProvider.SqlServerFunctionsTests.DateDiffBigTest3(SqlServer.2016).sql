BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:54:54.8520471 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:54:54.8520543 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

