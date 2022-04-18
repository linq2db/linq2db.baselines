BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 13:22:11.8932136 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 13:22:11.8932188 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

