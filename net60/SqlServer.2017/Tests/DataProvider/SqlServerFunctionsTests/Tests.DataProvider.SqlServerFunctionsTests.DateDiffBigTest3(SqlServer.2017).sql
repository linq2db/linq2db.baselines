BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:05:40.7764144 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 22:05:40.7764213 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

