BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 13:43:54.7939079 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 13:43:54.7939149 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

