BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:52:08.3039226 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-10 23:52:08.3039302 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

