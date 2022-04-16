BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:48:11.7592422 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 22:48:11.7592467 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

