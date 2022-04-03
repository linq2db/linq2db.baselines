BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 03:58:12.7919493 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 03:58:12.7919558 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

