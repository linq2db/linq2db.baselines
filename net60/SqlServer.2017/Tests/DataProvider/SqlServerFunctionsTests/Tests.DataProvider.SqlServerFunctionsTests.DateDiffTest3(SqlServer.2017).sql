BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:48:39.7532037 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:48:39.7532174 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

