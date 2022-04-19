BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:26:12.7160985 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 03:26:12.7161033 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

