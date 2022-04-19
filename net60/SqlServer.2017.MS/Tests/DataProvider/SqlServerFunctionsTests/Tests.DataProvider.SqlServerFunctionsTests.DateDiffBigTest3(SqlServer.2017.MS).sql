BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:26:12.6910588 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 03:26:12.6910645 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

