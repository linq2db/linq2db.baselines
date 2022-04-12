BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 21:52:23.0266470 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 21:52:23.0266544 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

