BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:47:51.4431211 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-16 23:47:51.4431299 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

