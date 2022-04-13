BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:04:25.6504356 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 02:04:25.6504485 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

