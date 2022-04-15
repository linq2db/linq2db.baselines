BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:31:21.6089693 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:31:21.6089780 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

