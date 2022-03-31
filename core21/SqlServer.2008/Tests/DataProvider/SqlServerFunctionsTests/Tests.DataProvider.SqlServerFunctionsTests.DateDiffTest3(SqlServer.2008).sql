BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:40:10.2810492 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-31 02:40:10.2810537 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

