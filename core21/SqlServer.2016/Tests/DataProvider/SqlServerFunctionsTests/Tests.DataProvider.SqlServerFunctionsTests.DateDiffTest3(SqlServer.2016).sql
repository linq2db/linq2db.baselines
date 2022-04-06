BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:01:36.1293608 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-06 17:01:36.1293663 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

