BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:45:23.7448985 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-18 06:45:23.7449030 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

