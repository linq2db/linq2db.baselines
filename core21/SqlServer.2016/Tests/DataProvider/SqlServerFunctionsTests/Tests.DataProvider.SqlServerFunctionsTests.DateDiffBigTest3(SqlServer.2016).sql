BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:33:14.4129579 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-01 19:33:14.4129643 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

