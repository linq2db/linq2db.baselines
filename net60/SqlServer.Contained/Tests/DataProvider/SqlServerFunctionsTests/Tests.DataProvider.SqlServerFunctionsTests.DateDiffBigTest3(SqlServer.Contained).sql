BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:57:09.1724149 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 21:57:09.1724207 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

