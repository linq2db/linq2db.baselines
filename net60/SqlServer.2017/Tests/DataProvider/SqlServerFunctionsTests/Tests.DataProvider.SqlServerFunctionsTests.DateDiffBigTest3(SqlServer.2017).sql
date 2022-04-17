BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:19:13.4965035 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 00:19:13.4965097 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

