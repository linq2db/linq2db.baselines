BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:29:02.5838879 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:29:02.5838953 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

