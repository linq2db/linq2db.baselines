BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:18:00.7104509 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:18:00.7104584 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

