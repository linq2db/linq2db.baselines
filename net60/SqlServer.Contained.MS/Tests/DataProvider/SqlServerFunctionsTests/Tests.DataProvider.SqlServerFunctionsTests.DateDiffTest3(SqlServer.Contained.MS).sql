BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:45:52.3014325 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-17 04:45:52.3017420 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

