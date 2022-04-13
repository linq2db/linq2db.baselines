BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 01:57:40.2280324 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 01:57:40.2280378 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

