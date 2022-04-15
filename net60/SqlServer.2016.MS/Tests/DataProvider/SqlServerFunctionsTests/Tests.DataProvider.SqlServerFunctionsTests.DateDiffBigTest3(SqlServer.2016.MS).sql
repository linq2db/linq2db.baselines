BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:40:00.7533759 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-15 17:40:00.7533862 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

