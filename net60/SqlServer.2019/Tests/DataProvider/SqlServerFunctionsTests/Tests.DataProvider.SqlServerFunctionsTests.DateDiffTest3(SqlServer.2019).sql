BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:43.8866622 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 03:39:43.8866708 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

