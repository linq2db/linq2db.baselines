BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:36:17.4857234 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-03 04:36:17.4857308 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

