BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:29:26.8967980 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:29:26.8968083 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

