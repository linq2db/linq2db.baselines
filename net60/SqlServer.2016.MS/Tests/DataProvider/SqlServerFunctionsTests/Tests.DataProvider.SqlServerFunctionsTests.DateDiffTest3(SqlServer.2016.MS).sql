BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:32:44.4634661 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-19 04:32:44.4634736 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

