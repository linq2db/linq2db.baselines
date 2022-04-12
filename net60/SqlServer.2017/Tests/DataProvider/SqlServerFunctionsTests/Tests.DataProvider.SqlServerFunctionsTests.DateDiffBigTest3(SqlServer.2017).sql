BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:00:39.9087836 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 12:00:39.9087907 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

