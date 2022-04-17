BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:50:38.9681820 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 01:50:38.9681867 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

