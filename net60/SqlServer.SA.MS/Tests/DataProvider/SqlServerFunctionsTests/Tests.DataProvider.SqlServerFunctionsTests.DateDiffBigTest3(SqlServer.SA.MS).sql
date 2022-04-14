BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:26:59.5345725 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 02:26:59.5345781 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

