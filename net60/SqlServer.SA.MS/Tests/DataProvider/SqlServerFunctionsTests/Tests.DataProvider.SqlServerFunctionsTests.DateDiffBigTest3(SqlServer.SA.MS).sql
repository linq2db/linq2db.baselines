BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:18:55.2302670 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:18:55.2302781 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

