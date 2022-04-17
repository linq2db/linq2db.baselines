BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:55:48.3470258 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 05:55:48.3470334 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

