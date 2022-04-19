BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:32:41.4045581 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:32:41.4045676 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

