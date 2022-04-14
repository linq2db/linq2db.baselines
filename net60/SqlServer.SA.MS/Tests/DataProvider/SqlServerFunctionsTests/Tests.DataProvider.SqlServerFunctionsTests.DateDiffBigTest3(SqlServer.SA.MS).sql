BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:37:15.8314456 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-14 15:37:15.8314501 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

