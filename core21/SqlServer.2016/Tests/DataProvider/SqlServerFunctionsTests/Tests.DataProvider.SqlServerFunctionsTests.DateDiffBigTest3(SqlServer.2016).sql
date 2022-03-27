BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:11:57.8573289 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-03-27 19:11:57.8573339 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

