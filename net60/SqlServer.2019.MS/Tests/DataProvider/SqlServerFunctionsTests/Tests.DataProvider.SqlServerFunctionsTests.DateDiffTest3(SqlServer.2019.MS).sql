BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:24:38.6229458 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:24:38.6229598 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

