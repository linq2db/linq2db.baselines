BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:37:34.7931848 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 21:37:34.7931913 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

