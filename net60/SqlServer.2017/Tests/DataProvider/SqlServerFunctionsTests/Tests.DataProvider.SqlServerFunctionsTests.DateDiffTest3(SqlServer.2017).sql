BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 12:00:39.9271318 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 12:00:39.9271394 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

