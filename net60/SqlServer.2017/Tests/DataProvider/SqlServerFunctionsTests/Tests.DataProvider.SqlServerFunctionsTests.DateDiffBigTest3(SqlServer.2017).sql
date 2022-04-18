BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:44:10.2992542 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 06:44:10.2992609 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

