BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:17:46.2588222 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:17:46.2588300 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

