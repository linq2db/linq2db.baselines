BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:32:04.2788441 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 15:32:04.2788594 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

