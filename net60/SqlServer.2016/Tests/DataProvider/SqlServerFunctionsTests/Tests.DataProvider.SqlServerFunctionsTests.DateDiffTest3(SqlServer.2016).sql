BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:43:13.1757205 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 15:43:13.1757288 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

