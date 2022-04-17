BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:28:26.6503999 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 04:28:26.6504082 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

