BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 08:17:02.2380124 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 08:17:02.2380178 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

